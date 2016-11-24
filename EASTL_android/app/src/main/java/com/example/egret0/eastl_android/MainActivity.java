package com.example.egret0.eastl_android;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity {

    private Button mBtn;
    private TextView mTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mBtn = (Button)findViewById(R.id.btn);
        mTextView = (TextView)findViewById(R.id.textView);

        NativeUtils.getInstance().setContext(this);
        NativeUtils.getInstance().setViews(mTextView);

        mBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                NativeUtils.testEASTL();
            }
        });
    }
}
