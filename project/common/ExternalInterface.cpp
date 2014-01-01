#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"
#include "../windows/HardWare.h"

//#include <string>

using namespace test;
using namespace hardware;

static value test_sample_method (value inputValue) {
	
	int returnValue = SampleMethod(val_int(inputValue));
	return alloc_int(returnValue);
	
}

static std::string test_get_harddisk_serial_number () {
	
	std::string hdSerialNumber = GetHarddiskSerialNumber();
	return hdSerialNumber;
	
}



DEFINE_PRIM (test_sample_method, 1);
DEFINE_PRIM (test_get_harddisk_serial_number, 0);



extern "C" void test_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (test_main);



extern "C" int test_register_prims () { return 0; }