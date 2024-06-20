package com.example.stripe_terminal

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel
import android.app.Activity
import android.util.Log
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


class StripeTerminalPlugin: FlutterPlugin, ActivityAware {
  private lateinit var channel : MethodChannel
  private var activity: Activity? = null
  private var flutterBinding: FlutterPlugin.FlutterPluginBinding? = null

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    Log.e("onAttachedToEngine: ", StripeTerminalSDK.STRIP_TERMINAL_SDK)
    flutterBinding = flutterPluginBinding;

  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
    channel = MethodChannel(flutterBinding!!.binaryMessenger, StripeTerminalSDK.STRIP_TERMINAL_SDK)
    StripeTerminalSDK.configsChannel(activity!!, channel!!)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivity() {
    activity = null
  }
}
