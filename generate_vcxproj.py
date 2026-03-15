#!/usr/bin/env python3
"""
Convert VC6 .dsp files to VS2022 .vcxproj files for MultiServer projects.
Also updates JXOnline.sln to include all projects.
"""
import os
import re
import uuid
import xml.etree.ElementTree as ET
from xml.dom import minidom

BASE_DIR = r"D:\JX\Source full JX (unrarme!#@)\JX\swrod3"
MULTISERVER_DIR = os.path.join(BASE_DIR, "SwordOnline", "Sources", "MultiServer")
SLN_FILE = os.path.join(BASE_DIR, "JXOnline.sln")

# C++ project type GUID
CPP_PROJECT_TYPE = "{8BC9CEB8-8B4A-11D0-8D11-00A0C91BC942}"
FOLDER_TYPE = "{2150E333-8FDC-42A3-9474-1A3956D46DE8}"

NS = "http://schemas.microsoft.com/developer/msbuild/2003"

def parse_dsp(dsp_path):
    """Parse a .dsp file and extract project configuration."""
    with open(dsp_path, 'r', encoding='latin-1') as f:
        content = f.read()

    info = {
        'name': '',
        'type': 'Application',  # Application, Static Library, Dynamic-Link Library
        'subsystem': 'windows',  # windows or console
        'mfc': False,
        'sources': [],
        'headers': [],
        'resources': [],
        'defs': [],
        'debug_defs': [],
        'release_defs': [],
        'debug_includes': [],
        'release_includes': [],
        'debug_libs': [],
        'release_libs': [],
        'debug_libdirs': [],
        'release_libdirs': [],
        'has_pch': False,
        'pch_header': 'StdAfx.h',
        'pch_source': 'StdAfx.cpp',
        'def_file': None,
        'output_dir_release': '',
        'output_dir_debug': '',
        'output_name': '',
    }

    # Project name
    m = re.search(r'# TARGTYPE.*"(.*?)"', content)
    if m:
        target_type = m.group(1)
        if 'Static Library' in target_type:
            info['type'] = 'StaticLibrary'
            info['subsystem'] = None
        elif 'Dynamic-Link Library' in target_type:
            info['type'] = 'DynamicLibrary'
            info['subsystem'] = None
        elif 'Console Application' in target_type:
            info['type'] = 'Application'
            info['subsystem'] = 'console'
        else:
            info['type'] = 'Application'
            info['subsystem'] = 'windows'

    # Get project name from the first line
    m = re.search(r'Name="([^"]+)"', content)
    if m:
        info['name'] = m.group(1)

    # Check MFC
    if re.search(r'# PROP Use_MFC [56]', content):
        info['mfc'] = True

    # Parse configurations
    current_config = None
    in_release = False
    in_debug = False

    for line in content.split('\n'):
        line = line.strip()

        if '!IF  "$(CFG)" ==' in line or '!ELSEIF  "$(CFG)" ==' in line:
            if 'Release' in line:
                current_config = 'release'
                in_release = True
                in_debug = False
            elif 'Debug' in line:
                current_config = 'debug'
                in_debug = True
                in_release = False
        elif line == '!ENDIF':
            current_config = None
            in_release = False
            in_debug = False

        # Preprocessor definitions
        m = re.search(r'/D "([^"]+)"', line)
        if m and ('ADD CPP' in line or 'ADD BASE CPP' in line):
            defs = re.findall(r'/D "([^"]+)"', line)
            if current_config == 'release':
                info['release_defs'] = defs
            elif current_config == 'debug':
                info['debug_defs'] = defs

        # Include directories
        m = re.search(r'/I "([^"]+)"', line)
        if m and 'ADD CPP' in line:
            includes = re.findall(r'/I "([^"]+)"', line)
            if current_config == 'release':
                info['release_includes'] = includes
            elif current_config == 'debug':
                info['debug_includes'] = includes

        # Additional libraries
        if 'ADD LINK32' in line or 'ADD BASE LINK32' in line:
            libs = re.findall(r'(\S+\.lib)', line)
            libdirs = re.findall(r'/libpath:"([^"]+)"', line)
            if current_config == 'release':
                info['release_libs'] = libs
                info['release_libdirs'] = libdirs
            elif current_config == 'debug':
                info['debug_libs'] = libs
                info['debug_libdirs'] = libdirs

        # Source files
        m = re.search(r'^SOURCE=(.+)', line)
        if m:
            src = m.group(1).strip().strip('"')
            src = src.replace('/', '\\')
            lower = src.lower()
            if lower.endswith('.cpp') or lower.endswith('.c'):
                info['sources'].append(src)
            elif lower.endswith('.h'):
                info['headers'].append(src)
            elif lower.endswith('.rc'):
                info['resources'].append(src)
            elif lower.endswith('.def'):
                info['def_file'] = src

        # PCH
        if '/Yu"' in line:
            m2 = re.search(r'/Yu"([^"]+)"', line)
            if m2:
                info['has_pch'] = True
                info['pch_header'] = m2.group(1)

    # If no config-specific defs, use defaults
    if not info['release_defs']:
        info['release_defs'] = ['WIN32', 'NDEBUG', '_WINDOWS', '_MBCS']
    if not info['debug_defs']:
        info['debug_defs'] = ['WIN32', '_DEBUG', '_WINDOWS', '_MBCS']

    # If debug includes empty, copy from release
    if not info['debug_includes'] and info['release_includes']:
        info['debug_includes'] = info['release_includes'][:]
    if not info['release_includes'] and info['debug_includes']:
        info['release_includes'] = info['debug_includes'][:]

    return info


def generate_vcxproj(info, output_path):
    """Generate a .vcxproj file from parsed .dsp info."""

    # Common compatibility defines to add
    compat_defs = ['_CRT_SECURE_NO_WARNINGS', '_WINSOCK_DEPRECATED_NO_WARNINGS',
                   '_CRT_NONSTDC_NO_DEPRECATE', '_SILENCE_STDEXT_HASH_DEPRECATION_WARNINGS']

    release_defs = ';'.join(info['release_defs'] + compat_defs)
    debug_defs = ';'.join(info['debug_defs'] + compat_defs)

    release_includes = ';'.join(info['release_includes']) if info['release_includes'] else ''
    debug_includes = ';'.join(info['debug_includes']) if info['debug_includes'] else ''

    # Determine config type string
    config_type = info['type']  # Application, StaticLibrary, DynamicLibrary

    # Determine subsystem
    if info['subsystem'] == 'console':
        subsystem = 'Console'
    elif info['subsystem'] == 'windows':
        subsystem = 'Windows'
    else:
        subsystem = ''

    # Runtime library
    rt_release = 'MultiThreaded'
    rt_debug = 'MultiThreadedDebug'

    # MFC
    use_mfc = 'Static' if info['mfc'] else 'false'

    # Build XML
    lines = []
    lines.append('<?xml version="1.0" encoding="utf-8"?>')
    lines.append('<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">')

    # ItemGroup - ProjectConfigurations
    lines.append('  <ItemGroup Label="ProjectConfigurations">')
    for cfg in ['Debug|Win32', 'Release|Win32']:
        c, p = cfg.split('|')
        lines.append(f'    <ProjectConfiguration Include="{cfg}">')
        lines.append(f'      <Configuration>{c}</Configuration>')
        lines.append(f'      <Platform>{p}</Platform>')
        lines.append(f'    </ProjectConfiguration>')
    lines.append('  </ItemGroup>')

    # Globals
    lines.append('  <PropertyGroup Label="Globals">')
    lines.append(f'    <ProjectGuid>{{{str(uuid.uuid5(uuid.NAMESPACE_DNS, info["name"] + ".multiserver")).upper()}}}</ProjectGuid>')
    lines.append(f'    <RootNamespace>{info["name"]}</RootNamespace>')
    lines.append(f'    <Keyword>Win32Proj</Keyword>')
    lines.append(f'    <WindowsTargetPlatformVersion>10.0</WindowsTargetPlatformVersion>')
    lines.append('  </PropertyGroup>')

    lines.append('  <Import Project="$(VCTargetsPath)\\Microsoft.Cpp.Default.props" />')

    # Configuration properties
    for cfg_name, is_debug in [('Debug', True), ('Release', False)]:
        lines.append(f'  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'{cfg_name}|Win32\'" Label="Configuration">')
        lines.append(f'    <ConfigurationType>{config_type}</ConfigurationType>')
        lines.append(f'    <PlatformToolset>v143</PlatformToolset>')
        lines.append(f'    <CharacterSet>MultiByte</CharacterSet>')
        if use_mfc != 'false':
            lines.append(f'    <UseOfMfc>{use_mfc}</UseOfMfc>')
        if not is_debug and config_type == 'Application':
            lines.append(f'    <WholeProgramOptimization>true</WholeProgramOptimization>')
        if is_debug:
            lines.append(f'    <UseDebugLibraries>true</UseDebugLibraries>')
        else:
            lines.append(f'    <UseDebugLibraries>false</UseDebugLibraries>')
        lines.append('  </PropertyGroup>')

    lines.append('  <Import Project="$(VCTargetsPath)\\Microsoft.Cpp.props" />')
    lines.append('  <ImportGroup Label="ExtensionSettings">')
    lines.append('  </ImportGroup>')

    for cfg_name in ['Debug', 'Release']:
        lines.append(f'  <ImportGroup Condition="\'$(Configuration)|$(Platform)\'==\'{cfg_name}|Win32\'" Label="PropertySheets">')
        lines.append('    <Import Project="$(UserRootDir)\\Microsoft.Cpp.$(Platform).user.props" Condition="exists(\'$(UserRootDir)\\Microsoft.Cpp.$(Platform).user.props\')" Label="LocalAppDataPlatform" />')
        lines.append('  </ImportGroup>')

    lines.append('  <PropertyGroup Label="UserMacros" />')

    # Output/Intermediate directories
    for cfg_name in ['Debug', 'Release']:
        lines.append(f'  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'{cfg_name}|Win32\'">')
        lines.append(f'    <OutDir>$(SolutionDir)build\\MultiServer\\$(ProjectName)\\$(Configuration)\\</OutDir>')
        lines.append(f'    <IntDir>$(SolutionDir)build\\MultiServer\\$(ProjectName)\\$(Configuration)\\intermediate\\</IntDir>')
        lines.append('  </PropertyGroup>')

    # Compiler settings
    for cfg_name, is_debug in [('Debug', True), ('Release', False)]:
        defs = debug_defs if is_debug else release_defs
        incs = debug_includes if is_debug else release_includes
        rt = rt_debug if is_debug else rt_release

        lines.append(f'  <ItemDefinitionGroup Condition="\'$(Configuration)|$(Platform)\'==\'{cfg_name}|Win32\'">')
        lines.append('    <ClCompile>')

        if is_debug:
            lines.append('      <Optimization>Disabled</Optimization>')
        else:
            lines.append('      <Optimization>MaxSpeed</Optimization>')
            lines.append('      <IntrinsicFunctions>true</IntrinsicFunctions>')
            lines.append('      <FunctionLevelLinking>true</FunctionLevelLinking>')

        if incs:
            lines.append(f'      <AdditionalIncludeDirectories>{incs};%(AdditionalIncludeDirectories)</AdditionalIncludeDirectories>')

        lines.append(f'      <PreprocessorDefinitions>{defs};%(PreprocessorDefinitions)</PreprocessorDefinitions>')
        lines.append(f'      <RuntimeLibrary>{rt}</RuntimeLibrary>')

        if info['has_pch']:
            lines.append(f'      <PrecompiledHeader>Use</PrecompiledHeader>')
            lines.append(f'      <PrecompiledHeaderFile>{info["pch_header"]}</PrecompiledHeaderFile>')

        lines.append('      <WarningLevel>Level3</WarningLevel>')
        lines.append('      <SDLCheck>false</SDLCheck>')
        lines.append('      <ConformanceMode>false</ConformanceMode>')
        lines.append('      <LanguageStandard>stdcpp14</LanguageStandard>')
        lines.append('      <AdditionalOptions>/Zc:strictStrings- /Zc:forScope- /Zc:twoPhase- %(AdditionalOptions)</AdditionalOptions>')

        if is_debug:
            lines.append('      <BasicRuntimeChecks>EnableFastChecks</BasicRuntimeChecks>')
            lines.append('      <DebugInformationFormat>EditAndContinue</DebugInformationFormat>')

        lines.append('    </ClCompile>')

        # Linker
        if config_type != 'StaticLibrary':
            lines.append('    <Link>')

            # Collect additional dependencies
            libs = info['debug_libs'] if is_debug else info['release_libs']
            # Filter standard libs and add custom ones
            std_libs = {'kernel32.lib', 'user32.lib', 'gdi32.lib', 'winspool.lib',
                       'comdlg32.lib', 'advapi32.lib', 'shell32.lib', 'ole32.lib',
                       'oleaut32.lib', 'uuid.lib', 'odbc32.lib', 'odbccp32.lib'}
            custom_libs = [l for l in libs if l.lower() not in std_libs]
            if custom_libs:
                lines.append(f'      <AdditionalDependencies>{";".join(custom_libs)};%(AdditionalDependencies)</AdditionalDependencies>')

            libdirs = info['debug_libdirs'] if is_debug else info['release_libdirs']
            if libdirs:
                lines.append(f'      <AdditionalLibraryDirectories>{";".join(libdirs)};%(AdditionalLibraryDirectories)</AdditionalLibraryDirectories>')

            if subsystem:
                lines.append(f'      <SubSystem>{subsystem}</SubSystem>')

            lines.append('      <GenerateDebugInformation>true</GenerateDebugInformation>')

            if info['def_file']:
                lines.append(f'      <ModuleDefinitionFile>{info["def_file"]}</ModuleDefinitionFile>')

            if not is_debug:
                lines.append('      <OptimizeReferences>true</OptimizeReferences>')
                lines.append('      <EnableCOMDATFolding>true</EnableCOMDATFolding>')

            lines.append('      <TargetMachine>MachineX86</TargetMachine>')
            lines.append('    </Link>')
        else:
            lines.append('    <Lib>')
            lines.append('      <TargetMachine>MachineX86</TargetMachine>')
            lines.append('    </Lib>')

        lines.append('  </ItemDefinitionGroup>')

    # Source files
    if info['sources']:
        lines.append('  <ItemGroup>')
        for src in info['sources']:
            src_clean = src.replace('.\\', '')
            if src_clean.lower().replace('\\', '/').endswith('stdafx.cpp') and info['has_pch']:
                lines.append(f'    <ClCompile Include="{src_clean}">')
                lines.append(f'      <PrecompiledHeader Condition="\'$(Configuration)|$(Platform)\'==\'Debug|Win32\'">Create</PrecompiledHeader>')
                lines.append(f'      <PrecompiledHeader Condition="\'$(Configuration)|$(Platform)\'==\'Release|Win32\'">Create</PrecompiledHeader>')
                lines.append(f'    </ClCompile>')
            else:
                lines.append(f'    <ClCompile Include="{src_clean}" />')
        lines.append('  </ItemGroup>')

    # Header files
    if info['headers']:
        lines.append('  <ItemGroup>')
        for hdr in info['headers']:
            hdr_clean = hdr.replace('.\\', '')
            lines.append(f'    <ClInclude Include="{hdr_clean}" />')
        lines.append('  </ItemGroup>')

    # Resource files
    if info['resources']:
        lines.append('  <ItemGroup>')
        for rc in info['resources']:
            rc_clean = rc.replace('.\\', '')
            lines.append(f'    <ResourceCompile Include="{rc_clean}" />')
        lines.append('  </ItemGroup>')

    # DEF file
    if info['def_file']:
        lines.append('  <ItemGroup>')
        lines.append(f'    <None Include="{info["def_file"]}" />')
        lines.append('  </ItemGroup>')

    lines.append('  <Import Project="$(VCTargetsPath)\\Microsoft.Cpp.targets" />')
    lines.append('  <ImportGroup Label="ExtensionTargets">')
    lines.append('  </ImportGroup>')
    lines.append('</Project>')

    xml_content = '\n'.join(lines) + '\n'

    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(xml_content)

    # Extract GUID
    guid_str = str(uuid.uuid5(uuid.NAMESPACE_DNS, info['name'] + '.multiserver')).upper()
    return guid_str


def get_project_guid(name):
    return str(uuid.uuid5(uuid.NAMESPACE_DNS, name + '.multiserver')).upper()


def main():
    # Find all .dsp files
    dsp_files = []
    for root, dirs, files in os.walk(MULTISERVER_DIR):
        for f in files:
            if f.lower().endswith('.dsp'):
                dsp_files.append(os.path.join(root, f))

    dsp_files.sort()
    print(f"Found {len(dsp_files)} .dsp files")

    projects = []

    for dsp_path in dsp_files:
        print(f"\nProcessing: {dsp_path}")
        info = parse_dsp(dsp_path)

        # Output vcxproj in same directory as .dsp
        dsp_dir = os.path.dirname(dsp_path)
        vcxproj_path = os.path.join(dsp_dir, info['name'] + '.vcxproj')

        guid = generate_vcxproj(info, vcxproj_path)
        print(f"  -> Generated: {vcxproj_path}")
        print(f"  -> GUID: {{{guid}}}")
        print(f"  -> Type: {info['type']} ({info['subsystem']})")

        # Compute relative path from solution dir
        rel_path = os.path.relpath(vcxproj_path, BASE_DIR)

        # Determine category
        proj_dir_name = os.path.basename(dsp_dir)
        parent_dir = os.path.basename(os.path.dirname(dsp_dir))

        if proj_dir_name.startswith('test') or parent_dir == 'Test':
            category = 'tests'
        elif parent_dir == 'Tools':
            category = 'tools'
        else:
            category = 'servers'

        # Use prefix MS_ to avoid name conflicts with existing solution projects
        display_name = f"MS_{info['name']}"
        # But for the vcxproj, use just the project name
        info['clean_name'] = info['name']

        projects.append({
            'name': info['name'],
            'display_name': display_name,
            'guid': guid,
            'rel_path': rel_path.replace('/', '\\'),
            'category': category,
            'type': info['type'],
        })

    # Now update solution file
    print(f"\n\n=== Updating solution file: {SLN_FILE} ===")

    with open(SLN_FILE, 'r', encoding='utf-8') as f:
        sln_content = f.read()

    # Define solution folder GUIDs
    folder_main = 'A0000005-0000-0000-0000-000000000005'
    folder_servers = 'A0000006-0000-0000-0000-000000000006'
    folder_tests = 'A0000007-0000-0000-0000-000000000007'
    folder_tools = 'A0000008-0000-0000-0000-000000000008'

    category_folders = {
        'servers': folder_servers,
        'tests': folder_tests,
        'tools': folder_tools,
    }

    # Build new project entries
    new_projects = []
    new_projects.append('')
    new_projects.append('# ============================================')
    new_projects.append('# MultiServer - Server Infrastructure')
    new_projects.append('# ============================================')
    new_projects.append(f'Project("{FOLDER_TYPE}") = "MultiServer", "MultiServer", "{{{folder_main}}}"')
    new_projects.append('EndProject')
    new_projects.append(f'Project("{FOLDER_TYPE}") = "MS_Servers", "MS_Servers", "{{{folder_servers}}}"')
    new_projects.append('EndProject')
    new_projects.append(f'Project("{FOLDER_TYPE}") = "MS_Tests", "MS_Tests", "{{{folder_tests}}}"')
    new_projects.append('EndProject')
    new_projects.append(f'Project("{FOLDER_TYPE}") = "MS_Tools", "MS_Tools", "{{{folder_tools}}}"')
    new_projects.append('EndProject')

    for proj in projects:
        new_projects.append(f'Project("{CPP_PROJECT_TYPE}") = "{proj["display_name"]}", "{proj["rel_path"]}", "{{{proj["guid"]}}}"')
        new_projects.append('EndProject')

    # Build config entries
    new_configs = []
    for proj in projects:
        guid = proj['guid']
        new_configs.append(f'\t\t{{{guid}}}.Debug|Win32.ActiveCfg = Debug|Win32')
        new_configs.append(f'\t\t{{{guid}}}.Debug|Win32.Build.0 = Debug|Win32')
        new_configs.append(f'\t\t{{{guid}}}.Release|Win32.ActiveCfg = Release|Win32')
        new_configs.append(f'\t\t{{{guid}}}.Release|Win32.Build.0 = Release|Win32')

    # Build nesting entries
    new_nesting = []
    # Subfolder nesting under main MultiServer folder
    new_nesting.append(f'\t\t{{{folder_servers}}} = {{{folder_main}}}')
    new_nesting.append(f'\t\t{{{folder_tests}}} = {{{folder_main}}}')
    new_nesting.append(f'\t\t{{{folder_tools}}} = {{{folder_main}}}')

    for proj in projects:
        parent_folder = category_folders[proj['category']]
        new_nesting.append(f'\t\t{{{proj["guid"]}}} = {{{parent_folder}}}')

    # Insert into solution
    # Find insertion point for projects (before Global)
    global_idx = sln_content.find('Global\n')
    if global_idx == -1:
        global_idx = sln_content.find('Global\r\n')

    project_block = '\n'.join(new_projects) + '\n'
    sln_content = sln_content[:global_idx] + project_block + sln_content[global_idx:]

    # Find and insert config entries (before EndGlobalSection of ProjectConfigurationPlatforms)
    config_section_end = sln_content.find('\tEndGlobalSection\n\tGlobalSection(SolutionProperties)')
    if config_section_end == -1:
        config_section_end = sln_content.find('\tEndGlobalSection\r\n\tGlobalSection(SolutionProperties)')

    config_block = '\n'.join(new_configs) + '\n'
    sln_content = sln_content[:config_section_end] + config_block + sln_content[config_section_end:]

    # Find and insert nesting entries (before EndGlobalSection of NestedProjects)
    # Find the last EndGlobalSection before ExtensibilityGlobals
    ext_globals_idx = sln_content.find('GlobalSection(ExtensibilityGlobals)')
    nested_end = sln_content.rfind('\tEndGlobalSection', 0, ext_globals_idx)

    nesting_block = '\n'.join(new_nesting) + '\n'
    sln_content = sln_content[:nested_end] + nesting_block + sln_content[nested_end:]

    with open(SLN_FILE, 'w', encoding='utf-8') as f:
        f.write(sln_content)

    print(f"\nSolution updated successfully!")
    print(f"Added {len(projects)} projects in 3 solution folders under 'MultiServer'")
    print("\nProjects by category:")
    for cat in ['servers', 'tests', 'tools']:
        cat_projs = [p for p in projects if p['category'] == cat]
        print(f"  {cat}: {len(cat_projs)} projects")
        for p in cat_projs:
            print(f"    - {p['display_name']} ({p['type']})")


if __name__ == '__main__':
    main()
