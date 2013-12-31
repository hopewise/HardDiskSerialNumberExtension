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
	
	
	public static function GetDiskSize ():Int {
		
		return test_get_harddisk_info();
		
	}
	
	private static var test_get_harddisk_info = Lib.load ("test", "test_get_harddisk_info", 0);
	
	
	private static var test_sample_method = Lib.load ("test", "test_sample_method", 1);
	
	
}