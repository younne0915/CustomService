//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class demo : MonoBehaviour
//{
//    public UnityEngine.UI.Text uiText;
//    void Start()
//    {
//    }

//    public void OpenCS()
//    {
//        var jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
//        var jo = jc.GetStatic<AndroidJavaObject>("currentActivity");
//        var javaClass = new AndroidJavaClass("com.hec.cslib.CSUtil");
//        javaClass.CallStatic("OpenCS", jo);//先试一试
//    }

//    public void OpenCSCallback(string tips)
//    {
//        Debug.LogErrorFormat("OpenCSCallback");
//        uiText.text = tips;

//    }
//}
