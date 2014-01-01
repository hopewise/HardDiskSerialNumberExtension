#include "HardWare.h"

#include <hx/CFFI.h>
#include <string>
using std::string;


using namespace hardware;

static value  test_get_harddisk_serial_number () {
	
	std::string serial= GetHarddiskSerialNumber();
	value  result= alloc_string(serial.c_str());
	return result;	
}
DEFINE_PRIM (test_get_harddisk_serial_number, 0);
