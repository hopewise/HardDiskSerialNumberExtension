package hardware;
import android.provider.Settings.Secure;
import org.haxe.lime.GameActivity;

class Hardware {
    public static String DeviceID(){
        return Secure.getString(GameActivity.getContext().getContentResolver(), Secure.ANDROID_ID); 
    }
}