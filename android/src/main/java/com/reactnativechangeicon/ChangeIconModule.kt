package com.reactnativechangeicon

import android.app.Activity
import android.content.pm.PackageManager
import android.content.ComponentName

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.bridge.Promise

class ChangeIconModule(reactContext: ReactApplicationContext, private val packageName: String) : ReactContextBaseJavaModule(reactContext) {
    override fun getName(): String {
        return "ChangeIcon"
    }

    @ReactMethod
    fun changeIcon(enableIcon: String, disableIcon: String, promise: Promise) {
        val activity: Activity? = currentActivity
        if (activity == null || enableIcon.isEmpty()) {
            promise.reject("Icon string is empty.")
            return
        }

        promise.resolve(true)
        activity.packageManager.setComponentEnabledSetting(
                ComponentName(packageName, "$packageName.MainActivity$enableIcon"),
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                PackageManager.DONT_KILL_APP
        )
        activity.packageManager.setComponentEnabledSetting(
                ComponentName(packageName, "$packageName.MainActivity$disableIcon"),
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                PackageManager.DONT_KILL_APP
        )
    }
}
