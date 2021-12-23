package ${YYAndroidPackageName};

import android.util.Log;
import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class PackageCheckExtension {
    public double package_is_installed(String targetPackage){
        PackageManager manager = RunnerActivity.CurrentActivity.getPackageManager();
        try {
            PackageInfo info = manager.getPackageInfo(targetPackage, PackageManager.GET_META_DATA);
        } catch (PackageManager.NameNotFoundException e) {
			Log.i("yoyo", "Package '" + targetPackage + "': NOT FOUND");
            return 0;
        }
		Log.i("yoyo", "Package '" + targetPackage + "': FOUND!");		
        return 1;
    }
}
