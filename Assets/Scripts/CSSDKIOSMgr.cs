
using System.Runtime.InteropServices;

public class CSSDKIOSMgr : CSSDKManager
{
#if UNITY_IOS
    [System.Runtime.InteropServices.DllImport("__Internal")]
    static extern string OpenCS();
#endif


    public override void OpenCustomSerice()
    {
#if UNITY_IOS
    OpenCS();
#endif
    }

    public override void OpenCSCallback(string tips)
    {
    }
}
