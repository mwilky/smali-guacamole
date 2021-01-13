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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconColorFromSlotName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "SlotName"    # Ljava/lang/String;
    .param p1, "TAG"    # Ljava/lang/String;

    .line 434
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 435
    .local v0, "Context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 436
    .local v1, "ContentResolver":Landroid/content/ContentResolver;
    const-string v2, "oneplus_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 437
    .local v2, "AccentColor":I
    const-string v3, "power_saver"

    const-string v4, "volume"

    const-string v5, "location"

    const-string v6, "bluetooth"

    const-string v7, "qs"

    if-eq p1, v7, :cond_4a

    .line 438
    sget-boolean v7, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v7, :cond_23

    .line 439
    return v2

    .line 440
    :cond_23
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 441
    sget v3, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v3

    .line 442
    :cond_2c
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 443
    sget v3, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v3

    .line 444
    :cond_35
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 445
    sget v3, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v3

    .line 446
    :cond_3e
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 447
    sget v3, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    return v3

    .line 449
    :cond_47
    sget v3, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v3

    .line 452
    :cond_4a
    sget-boolean v7, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v7, :cond_4f

    .line 453
    return v2

    .line 454
    :cond_4f
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 455
    sget v3, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v3

    .line 456
    :cond_58
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 457
    sget v3, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v3

    .line 458
    :cond_61
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 459
    sget v3, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v3

    .line 460
    :cond_6a
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 461
    sget v3, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    return v3

    .line 463
    :cond_73
    sget v3, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    return v3
.end method

.method public static setAlbumArtBlurAmount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_art_blur_amount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    .line 162
    return-void
.end method

.method public static setAnimScale(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mAnimScale:F

    .line 492
    return-void
.end method

.method public static setClockPosition(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 322
    return-void
.end method

.method public static setContinuousHorizon(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 479
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

    .line 480
    const-string v1, "tweaks_continuous_horizon_vibrate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mContinuousHorizonLightsVibration:Z

    .line 481
    return-void
.end method

.method public static setCustomEdgeAnimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
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

    .line 471
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

    .line 472
    const-string v1, "tweaks_edge_notif_color_system_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_29

    move v2, v3

    :cond_29
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentColorForEdgeNotifications:Z

    .line 473
    const-string v1, "tweaks_left_edge_notif_color"

    const v2, -0x712901

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLeftEdgeNotificationColor:I

    .line 474
    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRightEdgeNotificationColor:I

    .line 475
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
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

    .line 328
    return-void
.end method

.method public static setEdgeAnimRepeatCount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_edge_notif_repeat_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotifAnimRepeatCount:I

    .line 486
    const-string v1, "tweaks_horizon_repeat_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    move v2, v3

    :cond_17
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHorizonRepeatMode:Z

    .line 487
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
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

    .line 268
    return-void
.end method

.method public static setFpIconColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
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

    .line 153
    const-string v1, "tweaks_fp_normal_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintNormalColor:I

    .line 154
    const-string v1, "tweaks_fp_flash_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintFlashColor:I

    .line 155
    const-string v1, "tweaks_fp_disabled_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintDisabledColor:I

    .line 156
    const-string v1, "tweaks_fp_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_34

    move v2, v3

    :cond_34
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAppColorForFp:Z

    .line 157
    return-void
.end method

.method public static setHideLockscreenAlbumArt(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
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

    .line 143
    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
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

    .line 133
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
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

    .line 148
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
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

    .line 138
    return-void
.end method

.method public static setHideQsLabel(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
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

    .line 188
    return-void
.end method

.method public static setHideVolumeWarning(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
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

    .line 504
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_max_notifications"

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 498
    return-void
.end method

.method public static setNotificationColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
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

    .line 273
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v4, "tweaks_notification_background_color"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    .line 274
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

    .line 275
    if-eqz v1, :cond_13d

    .line 276
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForTextColor:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_92

    .line 277
    const-string v1, "oneplus_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, "AccentColor":I
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 279
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 280
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 281
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 282
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 283
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 284
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 285
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 286
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 287
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    .line 288
    .end local v1    # "AccentColor":I
    goto/16 :goto_175

    .line 289
    :cond_92
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_primary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 290
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_secondary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 291
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_header_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 292
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_expand_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 293
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_reply_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 294
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_other_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 295
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_other_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 296
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_smart_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 297
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v6, "tweaks_notification_smart_outline_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 298
    const-string v1, "tweaks_notification_action_button_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    goto :goto_175

    .line 301
    :cond_13d
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 302
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 303
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 304
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 305
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 306
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 307
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 308
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 309
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 310
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    .line 312
    :goto_175
    return-void
.end method

.method public static setOreoQs(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
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

    .line 172
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 217
    const-string v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 218
    const-string v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 219
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

    .line 220
    const-string v1, "tweaks_qs_anim_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsAnimClick:Z

    .line 221
    return-void
.end method

.method public static setQsBlur(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
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

    .line 193
    const-string v1, "tweaks_qs_blur"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlur:I

    .line 194
    const/16 v1, 0x64

    const-string v2, "tweaks_qs_blur_alpha"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlurAlpha:I

    .line 195
    return-void
.end method

.method public static setQsColors(Landroid/content/Context;)V
    .registers 15
    .param p0, "Context"    # Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
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

    .line 226
    const-string v1, "oem_special_theme"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 227
    .local v1, "specialTheme":Z
    :goto_1e
    const-string v4, "tweaks_qs_outline_color_accent"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    .line 228
    .local v4, "useAccent":Z
    :goto_29
    const-string v5, "oneplus_accent_color"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 229
    .local v5, "AccentColor":I
    const-string v6, "tweaks_qs_outline_width"

    const-string v7, "tweaks_qs_outline_color"

    const-string v8, "tweaks_qs_background_color"

    const/4 v9, 0x3

    if-nez v1, :cond_71

    .line 230
    sget-boolean v10, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    const/16 v11, 0x9

    if-eqz v10, :cond_62

    .line 231
    invoke-static {v11}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v10

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 232
    if-eqz v4, :cond_51

    .line 233
    sput v5, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    goto :goto_5b

    .line 235
    :cond_51
    invoke-static {v11}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    .line 237
    :goto_5b
    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsOutlineWidth:I

    goto :goto_b9

    .line 239
    :cond_62
    invoke-static {v11}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 240
    invoke-static {v11}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    .line 241
    sput v9, Lcom/android/mwilky/Renovate;->mQsOutlineWidth:I

    goto :goto_b9

    .line 244
    :cond_71
    sget-boolean v10, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    const-string v11, "op_turquoise"

    const-string v12, "op_control_bg_color_popup_dark"

    const-string v13, "color"

    if-eqz v10, :cond_a3

    .line 245
    invoke-static {v12, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 246
    if-eqz v4, :cond_8e

    .line 247
    sput v5, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    goto :goto_9c

    .line 249
    :cond_8e
    invoke-static {v11, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    .line 251
    :goto_9c
    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsOutlineWidth:I

    goto :goto_b9

    .line 253
    :cond_a3
    invoke-static {v12, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 254
    invoke-static {v11, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsOutlineColor:I

    .line 255
    sput v9, Lcom/android/mwilky/Renovate;->mQsOutlineWidth:I

    .line 258
    :goto_b9
    const-string v6, "tweaks_unlock_qs_scrim_color"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_c3

    move v6, v3

    goto :goto_c4

    :cond_c3
    move v6, v2

    :goto_c4
    sput-boolean v6, Lcom/android/mwilky/Renovate;->mUnlockQsScrimColors:Z

    .line 259
    const-string v6, "tweaks_qs_scrim_color"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/mwilky/Renovate;->mQsScrimColor:I

    .line 260
    const-string v6, "tweaks_disable_qs_scrim"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_d8

    move v6, v3

    goto :goto_d9

    :cond_d8
    move v6, v2

    :goto_d9
    sput-boolean v6, Lcom/android/mwilky/Renovate;->mDisableQsScrim:Z

    .line 261
    const-string v6, "tweaks_unlock_lockscreen_scrim_color"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_e4

    goto :goto_e5

    :cond_e4
    move v3, v2

    :goto_e5
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUnlockLockscreenScrimColors:Z

    .line 262
    const-string v3, "tweaks_lockscreen_scrim_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mLockscreenScrimColor:I

    .line 263
    return-void
.end method

.method public static setQsExpandVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
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

    .line 167
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 121
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 122
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 123
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
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

    .line 183
    return-void
.end method

.method public static setQsViewsVisibility(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
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

    .line 211
    const-string v1, "tweaks_hide_qs_statusbar_icons_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsStatusbarIconView:Z

    .line 212
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 206
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 343
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 345
    return-void
.end method

.method public static setRightHandVolumeMenu(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
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

    .line 338
    const-string v1, "tweaks_right_volume_menu_landscape"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mRightHandVolumeMenuLandscape:Z

    .line 339
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
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

    .line 128
    return-void
.end method

.method public static setShowQsDetail(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
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

    .line 177
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 200
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 6
    .param p0, "Context"    # Landroid/content/Context;

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 350
    const-string v1, "tweaks_global_statusbar_icon_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 351
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    const-string v4, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    .line 352
    const-string v3, "tweaks_dark_icon_color"

    const/high16 v4, -0x67000000

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 353
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

    .line 354
    const-string v3, "tweaks_accent_statusbar_qs"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3e

    move v4, v1

    :cond_3e
    sput-boolean v4, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    .line 355
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    const-string v4, "oneplus_accent_color"

    if-eqz v3, :cond_6a

    .line 356
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 357
    .local v2, "AccentColor":I
    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 358
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 359
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 360
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 361
    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 362
    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 363
    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 364
    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 365
    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 366
    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 367
    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 368
    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 369
    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    .line 370
    .end local v2    # "AccentColor":I
    goto/16 :goto_f3

    :cond_6a
    sget v3, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v3, v1, :cond_d7

    .line 371
    const-string v3, "tweaks_statusbar_clock_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 372
    const-string v3, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 373
    const-string v3, "tweaks_battery_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 374
    const-string v3, "tweaks_notification_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 375
    const-string v3, "tweaks_wifi_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 376
    const-string v3, "tweaks_mobile_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 377
    const-string v3, "tweaks_netspeed_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 378
    const-string v3, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 379
    const-string v3, "tweaks_volume_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 380
    const-string v3, "tweaks_location_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 381
    const-string v3, "tweaks_powersaver_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 382
    const-string v3, "tweaks_statusbar_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 383
    const-string v3, "tweaks_carrier_text_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    goto :goto_f3

    .line 385
    :cond_d7
    sget v2, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 386
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 387
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 388
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 389
    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 390
    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 391
    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 392
    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 393
    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 394
    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 395
    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 396
    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 397
    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    .line 399
    :goto_f3
    sget-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v2, :cond_113

    .line 400
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "AccentColor":I
    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 402
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 403
    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 404
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 405
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 406
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 407
    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 408
    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 409
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 410
    .end local v1    # "AccentColor":I
    goto/16 :goto_198

    :cond_113
    sget v2, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v2, v1, :cond_184

    .line 411
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 412
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 413
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_netspeed_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 414
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 415
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_location_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 416
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 417
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_powersaver_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 418
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_statusbar_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 419
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_statusbar_date_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    goto :goto_198

    .line 421
    :cond_184
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 422
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 423
    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 424
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 425
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 426
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 427
    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 428
    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 429
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 431
    :goto_198
    return-void
.end method

.method public static setStatusbarPeek(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 316
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

    .line 317
    return-void
.end method

.method public static setUnlinkVolume(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
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

    .line 333
    return-void
.end method
