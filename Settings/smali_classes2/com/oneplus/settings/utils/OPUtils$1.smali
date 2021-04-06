.class Lcom/oneplus/settings/utils/OPUtils$1;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAllSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string p0, "OPUtils"

    const-string v0, "sendAppTrackerForAllSettings for device boot."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForOhpdForceStopEnabled(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForTrueColor()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_auto_face_unlock_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "auto_face_unlock"

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_acc_sensor_three_finger"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "op_three_key_screenshots_enabled"

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGestureAndButton()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistantAPP()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_camera_notch_ignore"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "notch_display"

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunchToggle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoNightMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "read_mode_apps"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeApps(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeNotification()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenColorMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenCustomColorMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForThemes()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistApp()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDefaultHomeApp()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeSpeakerAnswer()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNotificationShow()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameMode3drPartyCalls()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeAdEnable()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNetWorkBoost()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "game_mode_apps"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeApps(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeRemovedApps()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForSmartWifiSwitch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDataAutoSwitch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReply()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyIMStatus()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyKeyboardStatus()V

    invoke-static {}, Lcom/oneplus/settings/better/OPHapticFeedback;->sendDefaultAppTracker()V

    invoke-static {}, Lcom/oneplus/settings/system/OPRamBoostSettings;->sendDefaultAppTracker()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "pop_up_face_unlock"

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForHorizonLightAnimStyle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendDisplaySettingsAnalytics()V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->access$000(Landroid/content/Context;)V

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->access$100(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/settings/system/OPRamBoostSettings;->sendRamboostAppTracker()V

    return-void
.end method
