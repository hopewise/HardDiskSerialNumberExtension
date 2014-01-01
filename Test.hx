package;
import openfl.utils.JNI;
#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class Test {
	
	#if android
    // We cannot use openfl.utils.JNI right now, it would return trash
    private static var testextension_getDeviceID : Dynamic;
	
    // Some docs about method signatures and examples
    // http://dev.kanngard.net/Permalinks/ID_20050509144235.html
    // https://communities.ca.com/web/ca-wily-global-user-community/wiki/-/wiki/Main/JNI+Signatures;jsessionid=499BBB87921D31A3E2803B8ED3F2FDCB.usilap723?&#p_36
    //
    // Here String doSomething(String) translates to this
    private static function init(){
        if (testextension_getDeviceID != null)
            return;
        testextension_getDeviceID = JNI.createStaticMethod("hardware.Hardware", "DeviceID", "()Ljava/lang/String;");
    }

    public static function DeviceID() : String {
        init();
        return testextension_getDeviceID();
    }
    #end
	
	
	public static function sampleMethod (inputValue:Int):Int {
		
		return test_sample_method(inputValue);
		
	}
	
	#if windows
	public static function GetHarddiskSerialNumber ():String {
		
		return test_get_harddisk_serial_number();
		
	}
	
	private static var test_get_harddisk_serial_number = Lib.load ("test", "test_get_harddisk_serial_number", 0);
	#end
	
	
	private static var test_sample_method = Lib.load ("test", "test_sample_method", 1);
	
	
}