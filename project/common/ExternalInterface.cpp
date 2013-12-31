#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"

using namespace test;

static value test_sample_method (value inputValue) {
	
	int returnValue = SampleMethod(val_int(inputValue));
	return alloc_int(returnValue);
	
}

static value test_get_harddisk_serial_number () {
	
	string hdSerialNumber = GetHarddiskSerialNumber();
	return alloc_string(hdSerialNumber);
	
}



DEFINE_PRIM (test_sample_method, 1);
DEFINE_PRIM (test_get_harddisk_serial_number, 0);



extern "C" void test_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (test_main);



extern "C" int test_register_prims () { return 0; }