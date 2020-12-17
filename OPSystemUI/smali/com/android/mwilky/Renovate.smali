.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mAlbumArtBlurAmount:F

.field public static mAnimScale:F

.field public static mBatteryIconColor:I

.field public static mBatteryPercentColor:I

.field public static mBluetoothIconColor:I

.field public static mCarrierTextColor:I

.field public static mClockColor:I

.field public static mClockPosition:I

.field public static mContinuousHorizonLights:Z

.field public static mContinuousHorizonLightsVibration:Z

.field public static mDarkIconColor:I

.field public static mDisableQsScrim:Z

.field public static mDoubleTapStatusbarSleep:Z

.field public static mExpandedNotifications:Z

.field public static mFingerprintDisabledColor:I

.field public static mFingerprintFlashColor:I

.field public static mFingerprintNormalColor:I

.field public static mGlobalQsIconColor:I

.field public static mGlobalStatusbarIconColor:I

.field public static mHideLockscreenAlbumArt:Z

.field public static mHideLockscreenClock:Z

.field public static mHideLockscreenShortcuts:Z

.field public static mHideLockscreenStatusbar:Z

.field public static mHideQsDateView:Z

.field public static mHideQsLabels:Z

.field public static mHideQsStatusbarIconView:Z

.field public static mHideVolumeWarning:Z

.field public static mHorizonRepeatMode:Z

.field public static mLeftEdgeNotificationColor:I

.field public static mLocationIconColor:I

.field public static mLockscreenScrimColor:I

.field public static mMaxNotifications:I

.field public static mNetSpeedColor:I

.field public static mNotifAnimRepeatCount:I

.field public static mNotificationActionButtonColor:I

.field public static mNotificationBackgroundColor:I

.field public static mNotificationExpandButtonColor:I

.field public static mNotificationHeaderTextColor:I

.field public static mNotificationIconColor:I

.field public static mNotificationOtherButtonColor:I

.field public static mNotificationOtherTextColor:I

.field public static mNotificationReplyButtonColor:I

.field public static mNotificationSmartOutlineColor:I

.field public static mNotificationSmartTextColor:I

.field public static mNotificationSummaryTextColor:I

.field public static mNotificationTitleTextColor:I

.field public static mOreoQs:Z

.field public static mPowerSaverIconColor:I

.field public static mQsAnimClick:Z

.field public static mQsAnimExpand:Z

.field public static mQsAnimationDuration:I

.field public static mQsAnimationInterpolator:I

.field public static mQsAnimationStyle:I

.field public static mQsBackgroundColor:I

.field public static mQsBluetoothIconColor:I

.field public static mQsBlur:I

.field public static mQsBlurAlpha:I

.field public static mQsBlurEnabled:Z

.field public static mQsColumns:I

.field public static mQsDateColor:I

.field public static mQsExpandVibration:Z

.field public static mQsLocationIconColor:I

.field public static mQsNetSpeedColor:I

.field public static mQsOutlineColor:I

.field public static mQsOutlineWidth:I

.field public static mQsPowerSaverIconColor:I

.field public static mQsRows:I

.field public static mQsScrimColor:I

.field public static mQsSignalIconColor:I

.field public static mQsStatusbarMisColor:I

.field public static mQsVibration:Z

.field public static mQsVolumeIconColor:I

.field public static mQsWifiIconColor:I

.field public static mQuickQsNumber:I

.field public static mQuickQsPulldown:I

.field public static mRiceType:I

.field public static mRightEdgeNotificationColor:I

.field public static mRightHandVolumeMenu:Z

.field public static mRightHandVolumeMenuLandscape:Z

.field public static mScrambleKeypad:Z

.field public static mShowQsDetail:Z

.field public static mSignalIconColor:I

.field public static mSmartPulldown:I

.field public static mStatusbarMiscColor:I

.field public static mStatusbarPeek:Z

.field public static mUnlinkVolume:Z

.field public static mUnlockEdgeColors:Z

.field public static mUnlockFingerprintColors:Z

.field public static mUnlockLockscreenScrimColors:Z

.field public static mUnlockNotificationColors:Z

.field public static mUnlockQsColors:Z

.field public static mUnlockQsScrimColors:Z

.field public static mUseAccentColorForEdgeNotifications:Z

.field public static mUseAccentForQsIcons:Z

.field public static mUseAccentForStatusbarIcons:Z

.field public static mUseAccentForTextColor:Z

.field public static mUseAppColorForEdgeNotifications:Z

.field public static mUseAppColorForFp:Z

.field public static mVolumeIconColor:I

.field public static mWifiIconColor:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconColorFromSlotName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "SlotName"    # Ljava/lang/String;
    .param p1, "TAG"    # Ljava/lang/String;

    .line 417
    const-string v0, "power_saver"

    const-string v1, "volume"

    const-string v2, "location"

    const/16 v3, 0x64

    const-string v4, "bluetooth"

    const-string v5, "qs"

    if-eq p1, v5, :cond_3e

    .line 418
    sget-boolean v5, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v5, :cond_17

    .line 419
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 420
    :cond_17
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 421
    sget v0, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v0

    .line 422
    :cond_20
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 423
    sget v0, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v0

    .line 424
    :cond_29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 425
    sget v0, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v0

    .line 426
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 427
    sget v0, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    return v0

    .line 429
    :cond_3b
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v0

    .line 432
    :cond_3e
    sget-boolean v5, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v5, :cond_47

    .line 433
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 434
    :cond_47
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 435
    sget v0, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v0

    .line 436
    :cond_50
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 437
    sget v0, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v0

    .line 438
    :cond_59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 439
    sget v0, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v0

    .line 440
    :cond_62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 441
    sget v0, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    return v0

    .line 443
    :cond_6b
    sget v0, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    return v0
.end method

.method public static setAlbumArtBlurAmount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_art_blur_amount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    .line 161
    return-void
.end method

.method public static setAnimScale(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mAnimScale:F

    .line 472
    return-void
.end method

.method public static setClockPosition(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 306
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 307
    return-void
.end method

.method public static setContinuousHorizon(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_continuous_horizon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mContinuousHorizonLights:Z

    .line 460
    const-string v1, "tweaks_continuous_horizon_vibrate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mContinuousHorizonLightsVibration:Z

    .line 461
    return-void
.end method

.method public static setCustomEdgeAnimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_edge_notif_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockEdgeColors:Z

    .line 451
    const-string v1, "tweaks_edge_notif_use_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUseAppColorForEdgeNotifications:Z

    .line 452
    const-string v1, "tweaks_edge_notif_color_system_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_29

    move v2, v3

    :cond_29
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentColorForEdgeNotifications:Z

    .line 453
    const-string v1, "tweaks_left_edge_notif_color"

    const v2, -0x712901

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLeftEdgeNotificationColor:I

    .line 454
    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRightEdgeNotificationColor:I

    .line 455
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_double_tap_sleep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDoubleTapStatusbarSleep:Z

    .line 313
    return-void
.end method

.method public static setEdgeAnimRepeatCount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_edge_notif_repeat_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotifAnimRepeatCount:I

    .line 466
    const-string v1, "tweaks_horizon_repeat_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    move v2, v3

    :cond_17
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHorizonRepeatMode:Z

    .line 467
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_expanded_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mExpandedNotifications:Z

    .line 254
    return-void
.end method

.method public static setFpIconColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_fp_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockFingerprintColors:Z

    .line 152
    const-string v1, "tweaks_fp_normal_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintNormalColor:I

    .line 153
    const-string v1, "tweaks_fp_flash_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintFlashColor:I

    .line 154
    const-string v1, "tweaks_fp_disabled_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintDisabledColor:I

    .line 155
    const-string v1, "tweaks_fp_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_34

    move v2, v3

    :cond_34
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAppColorForFp:Z

    .line 156
    return-void
.end method

.method public static setHideLockscreenAlbumArt(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_album_art"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenAlbumArt:Z

    .line 142
    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenClock:Z

    .line 132
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_shortcuts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenShortcuts:Z

    .line 147
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenStatusbar:Z

    .line 137
    return-void
.end method

.method public static setHideQsLabel(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_qs_labels"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsLabels:Z

    .line 187
    return-void
.end method

.method public static setHideVolumeWarning(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_disable_volume_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideVolumeWarning:Z

    .line 484
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_max_notifications"

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 478
    return-void
.end method

.method public static setNotificationColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_notification_text_accent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForTextColor:Z

    .line 259
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v4, "tweaks_notification_background_color"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    .line 260
    const-string v1, "tweaks_unlock_notification_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    .line 261
    if-eqz v1, :cond_15d

    .line 262
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForTextColor:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_b2

    .line 263
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 264
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 265
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 266
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 267
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 268
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 269
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 270
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 271
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 272
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    goto/16 :goto_195

    .line 274
    :cond_b2
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_primary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 275
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_secondary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 276
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_header_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 277
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_expand_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 278
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_reply_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 279
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_other_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 280
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_other_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 281
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_smart_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 282
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_smart_outline_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 283
    const-string v1, "tweaks_notification_action_button_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    goto :goto_195

    .line 286
    :cond_15d
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 287
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 288
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 289
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 290
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 291
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 292
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 293
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 294
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 295
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    .line 297
    :goto_195
    return-void
.end method

.method public static setOreoQs(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_oreo_qs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mOreoQs:Z

    .line 171
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 216
    const-string v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 217
    const-string v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 218
    const-string v1, "tweaks_qs_anim_expand"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mQsAnimExpand:Z

    .line 219
    const-string v1, "tweaks_qs_anim_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsAnimClick:Z

    .line 220
    return-void
.end method

.method public static setQsBlur(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_blur_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mQsBlurEnabled:Z

    .line 192
    const-string v1, "tweaks_qs_blur"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlur:I

    .line 193
    const/16 v1, 0x64

    const-string v2, "tweaks_qs_blur_alpha"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlurAlpha:I

    .line 194
    return-void
.end method

.method public static setQsColors(Landroid/content/Context;)V
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_qs_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    .line 225
    const-string v1, "oem_special_theme"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 226
    .local v1, "specialTheme":Z
    :goto_1e
    const-string v4, "tweaks_qs_outline_color"

    const-string v5, "tweaks_qs_background_color"

    if-nez v1, :cond_4c

    .line 227
    sget-boolean v6, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    const/16 v7, 0x9

    if-eqz v6, :cond_3f

    .line 228
    invoke-static {v7}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 229
    invoke-static {v7}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    goto :goto_87

    .line 231
    :cond_3f
    invoke-static {v7}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 232
    invoke-static {v7}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    goto :goto_87

    .line 235
    :cond_4c
    sget-boolean v6, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    const-string v7, "op_turquoise"

    const-string v8, "op_control_bg_color_popup_dark"

    const-string v9, "color"

    if-eqz v6, :cond_73

    .line 236
    invoke-static {v8, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 237
    invoke-static {v7, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    goto :goto_87

    .line 239
    :cond_73
    invoke-static {v8, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 240
    invoke-static {v7, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    .line 243
    :goto_87
    const/4 v4, 0x3

    const-string v5, "tweaks_qs_outline_width"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsOutlineWidth:I

    .line 244
    const-string v4, "tweaks_unlock_qs_scrim_color"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_9a

    move v4, v3

    goto :goto_9b

    :cond_9a
    move v4, v2

    :goto_9b
    sput-boolean v4, Lcom/android/mwilky/Renovate;->mUnlockQsScrimColors:Z

    .line 245
    const-string v4, "tweaks_qs_scrim_color"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mQsScrimColor:I

    .line 246
    const-string v4, "tweaks_disable_qs_scrim"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_af

    move v4, v3

    goto :goto_b0

    :cond_af
    move v4, v2

    :goto_b0
    sput-boolean v4, Lcom/android/mwilky/Renovate;->mDisableQsScrim:Z

    .line 247
    const-string v4, "tweaks_unlock_lockscreen_scrim_color"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_bb

    goto :goto_bc

    :cond_bb
    move v3, v2

    :goto_bc
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUnlockLockscreenScrimColors:Z

    .line 248
    const-string v3, "tweaks_lockscreen_scrim_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mLockscreenScrimColor:I

    .line 249
    return-void
.end method

.method public static setQsExpandVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_vibrate_expansion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsExpandVibration:Z

    .line 166
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 120
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 121
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 122
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsVibration:Z

    .line 182
    return-void
.end method

.method public static setQsViewsVisibility(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_qs_date_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mHideQsDateView:Z

    .line 210
    const-string v1, "tweaks_hide_qs_statusbar_icons_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsStatusbarIconView:Z

    .line 211
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 205
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 330
    return-void
.end method

.method public static setRightHandVolumeMenu(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_right_volume_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mRightHandVolumeMenu:Z

    .line 323
    const-string v1, "tweaks_right_volume_menu_landscape"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mRightHandVolumeMenuLandscape:Z

    .line 324
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_scramble_pin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    .line 127
    return-void
.end method

.method public static setShowQsDetail(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_detail"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mShowQsDetail:Z

    .line 176
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 199
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 6
    .param p0, "Context"    # Landroid/content/Context;

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 335
    const-string v1, "tweaks_global_statusbar_icon_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 336
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    const-string v4, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    .line 337
    const-string v3, "tweaks_dark_icon_color"

    const/high16 v4, -0x67000000

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 338
    const-string v3, "tweaks_accent_statusbar"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    move v3, v4

    :goto_33
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    .line 339
    const-string v3, "tweaks_accent_statusbar_qs"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3e

    move v4, v1

    :cond_3e
    sput-boolean v4, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    .line 340
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    const/16 v4, 0x64

    if-eqz v3, :cond_96

    .line 341
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 342
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 343
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 344
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 345
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 346
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 347
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 348
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 349
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 350
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 351
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 352
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 353
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    goto/16 :goto_11f

    .line 354
    :cond_96
    sget v3, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v3, v1, :cond_103

    .line 355
    const-string v3, "tweaks_statusbar_clock_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 356
    const-string v3, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 357
    const-string v3, "tweaks_battery_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 358
    const-string v3, "tweaks_notification_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 359
    const-string v3, "tweaks_wifi_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 360
    const-string v3, "tweaks_mobile_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 361
    const-string v3, "tweaks_netspeed_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 362
    const-string v3, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 363
    const-string v3, "tweaks_volume_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 364
    const-string v3, "tweaks_location_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 365
    const-string v3, "tweaks_powersaver_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 366
    const-string v3, "tweaks_statusbar_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 367
    const-string v3, "tweaks_carrier_text_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    goto :goto_11f

    .line 369
    :cond_103
    sget v2, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 370
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 371
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 372
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 373
    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 374
    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 375
    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 376
    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 377
    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 378
    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 379
    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 380
    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 381
    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    .line 383
    :goto_11f
    sget-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v2, :cond_15b

    .line 384
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 385
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 386
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 387
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 388
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 389
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 390
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 391
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 392
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    goto/16 :goto_1e0

    .line 393
    :cond_15b
    sget v2, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v2, v1, :cond_1cc

    .line 394
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 395
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 396
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_netspeed_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 397
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 398
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_location_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 399
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 400
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_powersaver_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 401
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_statusbar_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 402
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_statusbar_date_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    goto :goto_1e0

    .line 404
    :cond_1cc
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 405
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 406
    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 407
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 408
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 409
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 410
    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 411
    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 412
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 414
    :goto_1e0
    return-void
.end method

.method public static setStatusbarPeek(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_statusbar_peek"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mStatusbarPeek:Z

    .line 302
    return-void
.end method

.method public static setUnlinkVolume(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlink_volume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUnlinkVolume:Z

    .line 318
    return-void
.end method
