// Stub for MySQL++ sqlplus.hh - MySQL++ library not available
// This provides minimal type declarations to allow compilation
#ifndef _SQLPLUS_HH_STUB_
#define _SQLPLUS_HH_STUB_

#include <string>
#include <vector>
#include <iostream>

using std::cerr;
using std::endl;

class BadQuery {
public:
	std::string error;
	BadQuery(const char* e = "") : error(e) {}
};

class BadConversion {
public:
	std::string data;
	std::string type_name;
};

class Row {
public:
	std::string operator[](int) const { return ""; }
};

class Result {
public:
	bool empty() const { return true; }
	Row operator[](int) const { return Row(); }
};

class ResNSel {
};

class Query {
public:
	Query& operator<<(const char*) { return *this; }
	Result store() { return Result(); }
};

class Connection {
public:
	bool connect(const char*, const char*, const char*, const char*) { return false; }
	Query query() { return Query(); }
	ResNSel execute(const char*) { return ResNSel(); }
};

#endif // _SQLPLUS_HH_STUB_
