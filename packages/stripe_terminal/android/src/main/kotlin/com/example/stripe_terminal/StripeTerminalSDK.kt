
import android.content.Context
import android.content.Intent
import io.flutter.plugin.common.MethodChannel
import androidx.core.content.ContextCompat
import com.stripe.example.StripeActivity
import android.app.Activity
import com.stripe.stripeterminal.TerminalApplicationDelegate
import android.util.Log
object StripeTerminalSDK {
    lateinit var channel: MethodChannel
    const val STRIP_TERMINAL_SDK = "STRIP_TERMINAL_SDK_CHANNEL"
    private const val INITIALIZE_STRIP_TERMINAL_SDK = "INITIALIZE_STRIP_TERMINAL_SDK"

    fun configsChannel(activity: Activity, channel: MethodChannel) {
        this.channel = channel
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "getPlatformVersion" -> {
                    result.success("Android ${android.os.Build.VERSION.RELEASE}")
                }

                "INITIALIZE_STRIP_TERMINAL_SDK" -> {
                    Log.e("StripeTerminalSDK: ", INITIALIZE_STRIP_TERMINAL_SDK)
                    TerminalApplicationDelegate.onCreate(activity.application)
                    val intent = Intent(activity, StripeActivity::class.java)
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    activity.startActivity(intent)
                    result.success(true)
                }

                else -> {
                    result.notImplemented()
                }
            }
        }
    }

//    private fun getTransactionHistory(context: Context, result: MethodChannel.Result) {
//        val config: HashMap<String, Any> = prepareData(context, null)
//        Log.e("SoftPos sdk get history", "get history start")
//        softPosHelper = SoftPosHelper.getInstance()
//        try {
//            softPosHelper?.initSDK(context, config, object : InitializeListener {
//                override fun onPOSReady() {
//                    Log.e("SoftPos sdk init", "onPOSReady")
//                    handleLogicStartSdk(context, result)
//                }
//
//                override fun onRegisterNeed() {
//                    Log.e("SoftPos sdk init", "onRegisterNeed")
//                    softPosHelper?.onRegister(object : RegisterListener {
//                        override fun onRegisterSuccess() {
//                            Log.e("onRegisterSuccess", "onRegisterSuccess")
//                            handleLogicStartSdk(context, result)
//                        }
//
//                        override fun onRegisterError(softPosError: SoftPosError?) {
//                            Log.e(
//                                "onRegisterError",
//                                "onRegisterError" + softPosError?.errorCode + "-" + softPosError?.errorMessage
//                            )
//                            returnError(result, softPosError)
//                        }
//                    })
//                }
//
//                override fun onPermissionNeed(arrayList: java.util.ArrayList<String>?) {
//                    Log.e(
//                        "SoftPos sdk init",
//                        "onPermissionNeed: " + java.lang.String.join(
//                            ",",
//                            arrayList
//                        )
//                    )
//                }
//
//                override fun onInitializeError(softPosError: SoftPosError?) {
//                    Log.e(
//                        "SoftPos sdk init",
//                        "onInitializeError:" + Gson().toJson(softPosError).toString()
//                    )
//                    softPosHelper?.unregister()
//                    returnError(result, softPosError)
//                }
//            })
//        } catch (e: Exception) {
//            Log.e("SoftPos sdk get history", "get history start loi roi" +  e.printStackTrace())
//            e.printStackTrace()
//            softPosHelper?.unregister()
//        }
//    }
//
//    private fun startTransaction(
//        context: Context,
//        id: String,
//        amount: Double,
//        result: MethodChannel.Result
//    ) {
//        val config: HashMap<String, Any> = prepareData(context, amount)
//        softPosHelper = SoftPosHelper.getInstance()
//        try {
//            softPosHelper?.initSDK(context, config, object : InitializeListener {
//                override fun onPOSReady() {
//                    Log.e("SoftPos sdk init", "onPOSReady")
//                    handleLogicStartSdk(context, result)
//                }
//
//                override fun onRegisterNeed() {
//                    Log.e("SoftPos sdk init", "onRegisterNeed")
//                    softPosHelper?.onRegister(object : RegisterListener {
//                        override fun onRegisterSuccess() {
//                            Log.e("onRegisterSuccess", "onRegisterSuccess")
//                            handleLogicStartSdk(context, result)
//                        }
//
//                        override fun onRegisterError(softPosError: SoftPosError?) {
//                            LoadingDialog.getInstance().dismissDialog()
//                            Log.e(
//                                "onRegisterError",
//                                "onRegisterError" + softPosError?.errorCode + "-" + softPosError?.errorMessage
//                            )
//                            returnError(result, softPosError)
//                        }
//                    })
//                }
//
//                override fun onPermissionNeed(arrayList: java.util.ArrayList<String>?) {
//                    LoadingDialog.getInstance().dismissDialog()
//                    Log.e(
//                        "SoftPos sdk init",
//                        "onPermissionNeed: " + java.lang.String.join(
//                            ",",
//                            arrayList
//                        )
//                    )
//                }
//
//                override fun onInitializeError(softPosError: SoftPosError?) {
//                    LoadingDialog.getInstance().dismissDialog()
//                    Log.e(
//                        "SoftPos sdk init",
//                        "onInitializeError:" + Gson().toJson(softPosError).toString()
//                    )
//                    softPosHelper?.unregister()
//                    returnError(result, softPosError)
//                }
//            })
//        } catch (e: Exception) {
//            Log.e(
//                "SoftPos sdk init",
//                "Exception data:" +  e.printStackTrace()
//            )
//            e.printStackTrace()
//            softPosHelper?.unregister()
//        }
//    }
//
//    fun returnError(result: MethodChannel.Result, softPosError: SoftPosError?) {
//        val data = SoftPosResultDTO(
//            resultCode = Constant.TRANSACTION_FAIL,
//            resultData = softPosError
//        )
//        val response = data.serializeToMap()
//        Log.e(
//            "SoftPos sdk init",
//            "onInitializeError data:" + Gson().toJson(response).toString()
//        )
//        result.success(response)
//        Log.e(
//            "SoftPos sdk init",
//            "onInitializeError data1:" + Gson().toJson(response).toString()
//        )
//    }
//
//    private fun handleLogicStartSdk(context: Context, result: MethodChannel.Result) {
//        when (callSoftPosTo) {
//            CallSoftPosTo.VIEW_HISTORY -> {
//                Log.e("SoftPos sdk getHistory: ", "start get history")
//                getHistory(result)
//            }
//
//            CallSoftPosTo.PAYMENT -> {
//                softPosHelper?.currencyCode
//                softPosHelper?.startSdk(context) { response ->
//                    Log.e("SoftPos sdk result: ", Gson().toJson(response))
//                    result.success(response)
//                }
//                LoadingDialog.getInstance().dismissDialog()
//            }
//        }
//    }
//
//    fun getHistory(result: MethodChannel.Result) {
//        try {
//            softPosHelper?.getTransactionHistory(request) { response ->
//                response?.let {
//                    val messages = Gson().toJson(it)
//                    Log.e("SoftPos sdk result: ", messages)
//                    result.success(it)
//                }
//            }
//        } catch (e: Exception) {
//            Log.e("SoftPos sdk result:: ", e.printStackTrace().toString())
//            e.printStackTrace()
//            softPosHelper?.unregister()
//        }
//    }
//    private fun prepareData(
//        context: Context,
//        amount: Double?
//    ): HashMap<String, Any> {
//        Log.e("SoftPos Core", "SoftPos Core" + context.packageName)
//
//        val config: HashMap<String, Any> = hashMapOf()
//        config[Constant.CER_STREAM] = context.resources.openRawResource(
//            context.resources.getIdentifier("napas", "raw", context.packageName)
//        )
//        amount?.let {
//            config[Constant.AMOUNT] = it
//        }
//        config[Constant.URL] = "https://softpostest.napas.com.vn"
//        config[Constant.MERCHANT_ID] = "001-C-294858"
//        config[Constant.TERMINAL_ID] = "91510003"
//        config[Constant.ACTIVATION_CODE] = "123456"
//        config[Constant.API_KEY] = "AIzaSyC0Zt-_YOsnlc4vGG4ZGRpT53D36Zl3_FY"
//        config[Constant.HOST_NAME] = "*.napas.com.vn"
//        config[Constant.FILE_LOGGING] = "/sdcard/download"
//        config[Constant.PIN_PACKAGE_NAME] = "context.aar"
//        config[Constant.ACQUIRER_ID] = "200020".toLong()
//        config[Constant.CONNECTION_TIME_OUT] = "60".toInt()
//        config[Constant.HOST_RESPONSE_TIME_OUT] = "180000".toInt()
//        config[Constant.ISO_DEEP_TIME_OUT] = "15000".toInt()
//        Log.e("SoftPos Core data: ", config.toString())
//        return config
//    }
}