package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import android.widget.Toast;

public class AlertMessageModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public AlertMessageModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "AlertMessage";
    }

    @ReactMethod
    public void ShowMessage(String stringArgument) {
        // TODO: Implement some actually useful functionality
        Toast.makeText(getReactApplicationContext(), stringArgument, Toast.LENGTH_SHORT).show();
    }
}
