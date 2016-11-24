package com.example.egret0.eastl_android;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;

/**
 * Created by egret0 on 16/11/24.
 */
public class NativeUtils {

    private TextView mTextView;
    private Context mContext;

    private static NativeUtils instance = null;

    public static NativeUtils getInstance() {
        if (instance == null) {
            instance = new NativeUtils();
        }
        return instance;
    }

    private NativeUtils() {

    }

    public void setContext(Context context) {
        mContext = context;
    }

    public void setViews(TextView textView) {
        mTextView = textView;
    }

    public void updateText(final String str) {
        ((Activity)mContext).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                mTextView.setText(str);
            }
        });
    }

    public static void setText(String str) {
        NativeUtils.getInstance().updateText(str);
    }

    public static void printLog(String str) {
        Log.d("NativeUtils", str);
    }

    public static native void testEASTL();

    static {
        System.loadLibrary("EASTL");
    }

}
