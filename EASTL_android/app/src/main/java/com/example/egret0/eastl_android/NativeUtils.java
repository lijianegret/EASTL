package com.example.egret0.eastl_android;

/**
 * Created by egret0 on 16/11/24.
 */
public class NativeUtils {

    public static native void testEASTL();

    static {
        System.loadLibrary("EASTL");
    }

}
