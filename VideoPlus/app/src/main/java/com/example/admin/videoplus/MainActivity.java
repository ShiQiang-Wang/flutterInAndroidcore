package com.example.admin.videoplus;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;

import io.flutter.facade.Flutter;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        Button btn_click = findViewById(R.id.btn_click);
        FrameLayout flm = findViewById(R.id.flm);
        //        btn_click.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//
//
//            }
//        });
        View flutterView = Flutter.createView(
                MainActivity.this,
                getLifecycle(),
                "MyRow1"
        );
        FrameLayout.LayoutParams layout = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 800);
        layout.leftMargin = 100;
        layout.topMargin = 200;
//        flm.addContentView(flutterView, layout);
        flm.addView(flutterView,layout);
    }
}
