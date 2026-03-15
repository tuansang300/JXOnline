// Wrapper for new.h - redirects to the MSVC <new> header
// This file is needed because STLport 4.5.3's new.h tries to include
// ../include/new.h via _STLP_NATIVE_CPP_RUNTIME_HEADER, which expects
// the MSVC runtime headers to be at this relative path.

#pragma once

#include <new>
