using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CSSDKComponent : MonoBehaviour
{
    CSSDKManager _sdkMgr;

    public UnityEngine.UI.Text uiText;

    private void Awake()
    {

#if UNITY_IOS
        _sdkMgr = new CSSDKIOSMgr();
#elif UNITY_ANDROID
        _sdkMgr = new CSSDKAndroidMgr();
#else
                _sdkMgr = new CSSDKWinMgr();
#endif
    }

    public void OpenCS()
    {
        _sdkMgr.OpenCustomSerice();
    }

    public void OpenCSCallback(string tips)
    {
        Debug.LogErrorFormat("OpenCSCallback");
        uiText.text = tips;
        _sdkMgr.OpenCSCallback(tips);
    }
}
