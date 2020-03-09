
using UnityEngine;

public class CSSDKAndroidMgr : CSSDKManager
{
    AndroidJavaClass _androidCSUtil;
    AndroidJavaObject _currentActivity;

    public override void OpenCustomSerice()
    {
        if(_androidCSUtil == null)
        {
            var jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            _currentActivity = jc.GetStatic<AndroidJavaObject>("currentActivity");
            _androidCSUtil = new AndroidJavaClass("com.hec.cslib.CSUtil");
        }

        _androidCSUtil.CallStatic("OpenCS", _currentActivity);//先试一试
    }

    public override void OpenCSCallback(string tips)
    {
        
    }
}
