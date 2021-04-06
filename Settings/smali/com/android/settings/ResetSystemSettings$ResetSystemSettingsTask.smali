.class Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSystemSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field final synthetic this$0:Lcom/android/settings/ResetSystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$resetCustomizationCategory$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableLightThemes(Landroid/content/Context;)V

    return-void
.end method

.method private resetBTAndDeviceConnectionCategory(I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "private_dns_mode"

    const-string v1, "opportunistic"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "private_dns_specifier"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private resetBatteryCategory(I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "automatic_power_save_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power_trigger_level"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power_sticky_auto_disable_enabled"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "charging_guarder_enabled"

    invoke-static {p0, p1, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private resetBuiltInAppUpdates(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_app_updates_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.oneplus.appupgrader.action.SWITCH_CHANGED"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oneplus.appupgrader"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.settings.RECEIVE_PERMISSION"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private resetButtonsAndGesturesCategory(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_zen_media_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetNavigationBarAndGestures()V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_sensor_rotate_silent"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_sensor_three_finger"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_0

    const/16 v4, 0x3e7

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_route_audio"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_one_hand_mode_setting"

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_blackscreen_gesture_o"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_blackscreen_gesture_v"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_blackscreen_gesture_s"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_blackscreen_gesture_m"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_blackscreen_gesture_w"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "camera_double_tap_power_gesture_disabled"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "quick_turn_on_voice_assistant"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method

.method private resetCustomizationCategory(I)V
    .locals 7

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset Preset Theme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/OPThemeService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/-$$Lambda$ResetSystemSettings$ResetSystemSettingsTask$84GKT26DadRk0eloaj8DcJV2yjM;

    invoke-direct {v1, p0}, Lcom/android/settings/-$$Lambda$ResetSystemSettings$ResetSystemSettingsTask$84GKT26DadRk0eloaj8DcJV2yjM;-><init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_customization_theme_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_clock_style"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "doze_enabled"

    invoke-static {v1, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "prox_wake_enabled"

    invoke-static {v4, v5, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v3, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "aod_smart_display_enabled"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v6, 0xb

    invoke-static {v0, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v1, :cond_5

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->setAnimStyle(I)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_accent_color"

    const-string v1, "#ff2196f3"

    const/4 v4, -0x2

    invoke-static {p1, v0, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_white_mode_accent_color"

    invoke-static {p1, v0, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_white_mode_accent_color_index"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "persist.sys.theme.accentcolor"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mAm:Landroid/app/ActivityManager;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1, v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "oneplus_shape"

    invoke-static {v1, p1, v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->setFontStyle(I)V

    return-void
.end method

.method private resetDisplayCategory(I)V
    .locals 8

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset Night mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayAutoMode(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_nightmode_progress_status"

    const/16 v4, 0x32

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_nightmode_brightness_progress"

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x44aa200

    const-string v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x1808580

    const-string v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn on Adaptive brightness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset Screen timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [I

    const/16 v1, 0x49

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-string v1, "screen_off_timeout"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v6, 0x7530

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/32 v6, 0xea60

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :goto_0
    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set Screen calibration as Vivid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set Screen Refresh rate 90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v4, "oneplus_screen_refresh_rate"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_option_manual"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_block_notification"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn off Video enhancer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.oem.vendor.media.vpp.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_video_enhancer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set font scale to 1.0f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v4, "font_scale"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset display size/screen zoon to Small"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_battery_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "icon_blacklist"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBlacklist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "networkspeed"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const v4, 0x104079b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_seconds"

    invoke-static {v4, v5, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "rotate"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "ethernet"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    const-string v3, "mobile"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v3, "volume"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v3, "vowifi"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    const-string v3, "airplane"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    const-string v3, "managed_profile"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_b
    const-string v3, "nfc"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_c
    const-string/jumbo v3, "zen"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d
    const-string v3, "cast"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_e
    const-string/jumbo v3, "wifi"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v3, "volte"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_10
    const-string v3, "alarm_clock"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_11
    const-string v3, "headset"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_12
    const-string v3, "hotspot"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_13
    const-string v3, "bluetooth"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "bluetooth"

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_14
    const-string/jumbo v3, "wlb"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string/jumbo v3, "wlb"

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_15
    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Turn On Auto-rotate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return-void
.end method

.method private resetLocationCategory(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_scan_always_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "ble_scan_always_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetNavigationBarAndGestures()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_fullscreen_gesture_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_define"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_long_press_action"

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_double_tap_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_app_switch_long_press_action"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_app_switch_double_tap_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_back_long_press_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_back_double_tap_action"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetOnePlusNotifications(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "oem_receive_notifications"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Landroid/content/Intent;

    const-string v0, "net.oneplus.push.action.SWITCH_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "net.oneplus.push"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private resetPrivacyCategory(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private resetSoundAndVibrationCategory(I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset Earphone mode: Auto play OFF, SMART Answer OFF, Speak Caller ID OFF, BT absolute volume ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_auto_play"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_answer_via_bluetooth"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_notification_ringtone"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_call_information_broadcast"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "persist.bluetooth.disableabsvol"

    const-string v0, "false"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.avrcp.intent.action.ENABLE_ABSVOL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "incoming_call_vibrate_mode"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "incoming_call_vibrate_intensity"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notice_vibrate_intensity"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sound_effects_enabled"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dtmf_tone"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_screenshot_sound_enable"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetStorageCategory()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I

    move-result p0

    const-string v1, "automatic_storage_manager_days_to_retain"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetSystemCategory()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DummyString"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_on_lock_screen"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    const/16 v4, 0xc

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "transition_animation_scale"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v4, 0x190

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_interactive_ui_timeout_ms"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetSystemSettings;->isRampingRingerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v4, "notification_vibration_intensity"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_mono"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v5, "master_balance"

    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_aid"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn OFF OTG storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.oem.otg_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_otg_auto_disable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset Experience improvement programs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetOnePlusNotifications(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetUEProgram(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_join_stability_plan_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetBuiltInAppUpdates(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn On RAM boost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/oneplus/settings/system/OPRamBoostSettings;->setRamBoostState(Landroid/content/Context;Z)V

    return-void
.end method

.method private resetUEProgram(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_join_user_plan_settings"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "INTENT_START_ODM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private resetUtilitiesCategory(I)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_quickpay_enable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "def_timepower_config"

    const-string v2, "060000000000"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.android.settings.POWER_OP_ON"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x11000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-wide v3, p1, v1

    const-string p1, "time"

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_force_dark_mode"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "op_quickreply_ime_adjust"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setAnimStyle(I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimStyle value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentHorizonLightByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "oneplus_aodnotification"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    return-void
.end method

.method private setFontStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;-><init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavBarInteractionMode: overlayPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    :try_start_0
    invoke-interface {p1, p2, p0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetBTAndDeviceConnectionCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetDisplayCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetSoundAndVibrationCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetButtonsAndGesturesCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetPrivacyCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetLocationCategory(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetBatteryCategory(I)V

    invoke-direct {p0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetStorageCategory()V

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetUtilitiesCategory(I)V

    invoke-direct {p0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetSystemCategory()V

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset device name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {v1}, Lcom/android/settings/ResetSystemSettings;->access$500(Lcom/android/settings/ResetSystemSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_modified_devicename"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->resetCustomizationCategory(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$resetCustomizationCategory$0$ResetSystemSettings$ResetSystemSettingsTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->lambda$resetCustomizationCategory$0()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p1}, Lcom/android/settings/ResetSystemSettings;->access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p1}, Lcom/android/settings/ResetSystemSettings;->access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->reset_system_settings_complete_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
