package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class Test {
	
	
	public static function sampleMethod (inputValue:Int):Int {
		
		return test_sample_method(inputValue);
		
	}
	
	
	public static function GetHarddiskSerialNumber ():String {
		
		return test_get_harddisk_serial_number();
		
	}
	
	private static var test_get_harddisk_serial_number = Lib.load ("test", "test_get_harddisk_serial_number", 0);
	
	
	private static var test_sample_method = Lib.load ("test", "test_sample_method", 1);
	
	
}