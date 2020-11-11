.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mAccentColor:I

.field public static mAlbumArtBlurAmount:F

.field public static mBatteryIconColor:I

.field public static mBatteryPercentColor:I

.field public static mBluetoothIconColor:I

.field public static mCarrierTextColor:I

.field public static mClockColor:I

.field public static mClockPosition:I

.field public static mColorMediaNotificationText:Z

.field public static mContinuousHorizonLights:Z

.field public static mContinuousHorizonLightsVibration:Z

.field public static mDarkIconColor:I

.field public static mDarkQsIcons:Z

.field public static mDisableQsScrim:Z

.field public static mDisableSmartReplies:Z

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

.field public static mLeftEdgeNotificationColor:I

.field public static mLocationIconColor:I

.field public static mLockscreenScrimColor:I

.field public static mMergeNotifications:Z

.field public static mNetSpeedColor:I

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

.field public static mQsPowerSaverIconColor:I

.field public static mQsRamBar:I

.field public static mQsRamBarCornerRadius:I

.field public static mQsRamBarFreeBackgroundColor:I

.field public static mQsRamBarFreeTextColor:I

.field public static mQsRamBarHeight:I

.field public static mQsRamBarUsedBackgroundColor:I

.field public static mQsRamBarUsedTextColor:I

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
    .registers 7
    .param p0, "SlotName"    # Ljava/lang/String;
    .param p1, "TAG"    # Ljava/lang/String;

    .line 510
    const-string v0, "power_saver"

    const-string v1, "volume"

    const-string v2, "location"

    const-string v3, "bluetooth"

    const-string v4, "qs"

    if-eq p1, v4, :cond_3a

    .line 511
    sget-boolean v4, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v4, :cond_13

    .line 512
    sget v0, Lcom/android/mwilky/Renovate;->mAccentColor:I

    return v0

    .line 513
    :cond_13
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 514
    sget v0, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v0

    .line 515
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 516
    sget v0, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v0

    .line 517
    :cond_25
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 518
    sget v0, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v0

    .line 519
    :cond_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 520
    sget v0, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    return v0

    .line 522
    :cond_37
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v0

    .line 525
    :cond_3a
    sget-boolean v4, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v4, :cond_41

    .line 526
    sget v0, Lcom/android/mwilky/Renovate;->mAccentColor:I

    return v0

    .line 527
    :cond_41
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 528
    sget v0, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v0

    .line 529
    :cond_4a
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 530
    sget v0, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v0

    .line 531
    :cond_53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 532
    sget v0, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v0

    .line 533
    :cond_5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 534
    sget v0, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    return v0

    .line 536
    :cond_65
    sget v0, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    return v0
.end method

.method private static getNotificationTextColorForTheme(Landroid/content/Context;Z)I
    .registers 10
    .param p0, "Context"    # Landroid/content/Context;
    .param p1, "isPrimary"    # Z

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 367
    .local v1, "theme":I
    const/4 v3, 0x3

    const/high16 v4, -0x22000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_26

    .line 368
    if-ne v1, v6, :cond_16

    move v7, v6

    goto :goto_17

    :cond_16
    move v7, v5

    :goto_17
    if-ne v1, v3, :cond_1a

    move v5, v6

    :cond_1a
    or-int v3, v7, v5

    if-eqz v3, :cond_22

    .line 370
    const v2, -0x22000001

    return v2

    .line 371
    :cond_22
    if-ne v1, v2, :cond_25

    .line 373
    return v4

    .line 376
    :cond_25
    return v4

    .line 379
    :cond_26
    if-ne v1, v6, :cond_2a

    move v7, v6

    goto :goto_2b

    :cond_2a
    move v7, v5

    :goto_2b
    if-ne v1, v3, :cond_2e

    move v5, v6

    :cond_2e
    or-int v3, v7, v5

    if-eqz v3, :cond_36

    .line 381
    const v2, -0x4d000001

    return v2

    .line 382
    :cond_36
    if-ne v1, v2, :cond_39

    .line 384
    return v4

    .line 387
    :cond_39
    return v4
.end method

.method public static setAccentColor(Landroid/content/Context;)V
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 338
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "HexColorWhite":Ljava/lang/String;
    const-string v3, "oem_black_mode"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 341
    .local v3, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 342
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 343
    const v4, -0x43fd3

    sput v4, Lcom/android/mwilky/Renovate;->mAccentColor:I

    goto :goto_68

    .line 344
    :cond_27
    const/16 v7, 0x10

    const/4 v8, -0x1

    if-ne v3, v6, :cond_47

    .line 345
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_3b

    .line 346
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mAccentColor:I

    goto :goto_68

    .line 348
    :cond_3b
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    sput v4, Lcom/android/mwilky/Renovate;->mAccentColor:I

    goto :goto_68

    .line 351
    :cond_47
    if-nez v3, :cond_64

    .line 352
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_58

    .line 353
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/mwilky/Renovate;->mAccentColor:I

    goto :goto_68

    .line 355
    :cond_58
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    sput v4, Lcom/android/mwilky/Renovate;->mAccentColor:I

    goto :goto_68

    .line 358
    :cond_64
    if-ne v3, v4, :cond_68

    .line 359
    sput v8, Lcom/android/mwilky/Renovate;->mAccentColor:I

    .line 361
    :cond_68
    :goto_68
    return-void
.end method

.method public static setAlbumArtBlurAmount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_art_blur_amount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    .line 165
    return-void
.end method

.method public static setClockPosition(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 401
    return-void
.end method

.method public static setColorChanges(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
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

    .line 244
    const-string v1, "tweaks_unlock_qs_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    .line 245
    const-string v1, "tweaks_unlock_notification_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2a

    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    .line 246
    const-string v1, "tweaks_unlock_edge_notif_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUnlockEdgeColors:Z

    .line 247
    return-void
.end method

.method public static setContinuousHorizon(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
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

    .line 552
    const-string v1, "tweaks_continuous_horizon_vibrate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mContinuousHorizonLightsVibration:Z

    .line 553
    return-void
.end method

.method public static setCustomEdgeAnimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_edge_notif_use_app_color"

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
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUseAppColorForEdgeNotifications:Z

    .line 544
    const-string v1, "tweaks_edge_notif_color_system_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentColorForEdgeNotifications:Z

    .line 545
    const-string v1, "tweaks_left_edge_notif_color"

    const v2, -0x712901

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLeftEdgeNotificationColor:I

    .line 546
    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRightEdgeNotificationColor:I

    .line 547
    return-void
.end method

.method public static setDarkQsIcons(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_dark_qs_icons"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDarkQsIcons:Z

    .line 180
    return-void
.end method

.method public static setDisableSmartReplies(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_disable_smart_replies"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDisableSmartReplies:Z

    .line 286
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
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

    .line 407
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
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

    .line 275
    return-void
.end method

.method public static setFpIconColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_fp_normal_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintNormalColor:I

    .line 157
    const-string v1, "tweaks_fp_flash_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintFlashColor:I

    .line 158
    const-string v1, "tweaks_fp_disabled_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintDisabledColor:I

    .line 159
    const-string v1, "tweaks_fp_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    move v2, v3

    :cond_27
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAppColorForFp:Z

    .line 160
    return-void
.end method

.method public static setHideLockscreenAlbumArt(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
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

    .line 147
    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
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

    .line 137
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
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

    .line 152
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
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

    .line 142
    return-void
.end method

.method public static setHideQsLabel(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
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

    .line 196
    return-void
.end method

.method public static setMergeNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_merge_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mMergeNotifications:Z

    .line 281
    return-void
.end method

.method public static setNotificationBackgroundColors(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_notification_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    .line 292
    return-void
.end method

.method public static setNotificationTextColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
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

    .line 297
    const-string v1, "tweaks_color_media_notif_text"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mColorMediaNotificationText:Z

    .line 298
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    if-eqz v1, :cond_13b

    .line 299
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForTextColor:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_90

    .line 300
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 301
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 302
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 303
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 304
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 305
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 306
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 307
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 308
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 309
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget v2, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    goto/16 :goto_173

    .line 311
    :cond_90
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_primary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 312
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_secondary_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 313
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_header_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 314
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_expand_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 315
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_reply_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 316
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_other_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 317
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_other_button_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 318
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_smart_text_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 319
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    const-string v6, "tweaks_notification_smart_outline_color"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v6, Lcom/android/mwilky/Renovate;->mNotificationBackgroundColor:I

    invoke-static {v1, v6, v3, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 320
    const-string v1, "tweaks_notification_action_button_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    goto :goto_173

    .line 323
    :cond_13b
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I

    .line 324
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I

    .line 325
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationHeaderTextColor:I

    .line 326
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationExpandButtonColor:I

    .line 327
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationReplyButtonColor:I

    .line 328
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherTextColor:I

    .line 329
    invoke-static {p0, v2}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationOtherButtonColor:I

    .line 330
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartTextColor:I

    .line 331
    invoke-static {p0, v3}, Lcom/android/mwilky/Renovate;->getNotificationTextColorForTheme(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationSmartOutlineColor:I

    .line 332
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationActionButtonColor:I

    .line 334
    :goto_173
    return-void
.end method

.method public static setOreoQs(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
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

    .line 175
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 225
    const-string v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 226
    const-string v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 227
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

    .line 228
    const-string v1, "tweaks_qs_anim_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsAnimClick:Z

    .line 229
    return-void
.end method

.method public static setQsBackgroundColor(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 252
    return-void
.end method

.method public static setQsBlur(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
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

    .line 201
    const-string v1, "tweaks_qs_blur"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlur:I

    .line 202
    const/16 v1, 0x64

    const-string v2, "tweaks_qs_blur_alpha"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlurAlpha:I

    .line 203
    return-void
.end method

.method public static setQsExpandVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
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

    .line 170
    return-void
.end method

.method public static setQsRamBar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_ram_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBar:I

    .line 257
    const-string v1, "tweaks_qs_ram_bar_height"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarHeight:I

    .line 258
    const-string v1, "tweaks_qs_ram_bar_corner_radius"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarCornerRadius:I

    .line 259
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    if-eqz v1, :cond_57

    .line 260
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_used_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedBackgroundColor:I

    .line 261
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_free_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeBackgroundColor:I

    .line 262
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_used_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedTextColor:I

    .line 263
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_free_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeTextColor:I

    goto :goto_77

    .line 265
    :cond_57
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedBackgroundColor:I

    .line 266
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeBackgroundColor:I

    .line 267
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedTextColor:I

    .line 268
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeTextColor:I

    .line 270
    :goto_77
    return-void
.end method

.method public static setQsScrimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_qs_scrim_color"

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
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsScrimColors:Z

    .line 234
    const-string v1, "tweaks_qs_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsScrimColor:I

    .line 235
    const-string v1, "tweaks_disable_qs_scrim"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mDisableQsScrim:Z

    .line 236
    const-string v1, "tweaks_unlock_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUnlockLockscreenScrimColors:Z

    .line 237
    const-string v1, "tweaks_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLockscreenScrimColor:I

    .line 239
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 125
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 126
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 127
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
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

    .line 191
    return-void
.end method

.method public static setQsViewsVisibility(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
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

    .line 219
    const-string v1, "tweaks_hide_qs_statusbar_icons_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsStatusbarIconView:Z

    .line 220
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 214
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 422
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 424
    return-void
.end method

.method public static setRightHandVolumeMenu(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
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

    .line 417
    const-string v1, "tweaks_right_volume_menu_landscape"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mRightHandVolumeMenuLandscape:Z

    .line 418
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
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

    .line 132
    return-void
.end method

.method public static setShowQsDetail(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
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

    .line 185
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 208
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 6
    .param p0, "Context"    # Landroid/content/Context;

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_global_statusbar_icon_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 429
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    const-string v4, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    .line 430
    const-string v3, "tweaks_dark_icon_color"

    const/high16 v4, -0x67000000

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 431
    const-string v3, "tweaks_accent_statusbar"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    .line 432
    const-string v3, "tweaks_accent_statusbar_qs"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3b

    move v4, v1

    :cond_3b
    sput-boolean v4, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    .line 433
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v3, :cond_5f

    .line 434
    sget v2, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 435
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 436
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 437
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 438
    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 439
    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 440
    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 441
    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 442
    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 443
    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 444
    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 445
    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 446
    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    goto/16 :goto_e8

    .line 447
    :cond_5f
    sget v3, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v3, v1, :cond_cc

    .line 448
    const-string v3, "tweaks_statusbar_clock_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 449
    const-string v3, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 450
    const-string v3, "tweaks_battery_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 451
    const-string v3, "tweaks_notification_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 452
    const-string v3, "tweaks_wifi_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 453
    const-string v3, "tweaks_mobile_signal_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 454
    const-string v3, "tweaks_netspeed_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 455
    const-string v3, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 456
    const-string v3, "tweaks_volume_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 457
    const-string v3, "tweaks_location_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 458
    const-string v3, "tweaks_powersaver_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 459
    const-string v3, "tweaks_statusbar_icon_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 460
    const-string v3, "tweaks_carrier_text_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    goto :goto_e8

    .line 462
    :cond_cc
    sget v2, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 463
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 464
    sput v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 465
    sput v2, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 466
    sput v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 467
    sput v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 468
    sput v2, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    .line 469
    sput v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 470
    sput v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 471
    sput v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 472
    sput v2, Lcom/android/mwilky/Renovate;->mPowerSaverIconColor:I

    .line 473
    sput v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 474
    sput v2, Lcom/android/mwilky/Renovate;->mCarrierTextColor:I

    .line 476
    :goto_e8
    sget-boolean v2, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v2, :cond_102

    .line 477
    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 478
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 479
    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 480
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 481
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 482
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 483
    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 484
    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 485
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    goto/16 :goto_187

    .line 486
    :cond_102
    sget v2, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v2, v1, :cond_173

    .line 487
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 488
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 489
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_netspeed_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 490
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 491
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_location_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 492
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 493
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_powersaver_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 494
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const-string v3, "tweaks_statusbar_icon_color_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 495
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_statusbar_date_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    goto :goto_187

    .line 497
    :cond_173
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalQsIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 498
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 499
    sput v1, Lcom/android/mwilky/Renovate;->mQsNetSpeedColor:I

    .line 500
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 501
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 502
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 503
    sput v1, Lcom/android/mwilky/Renovate;->mQsPowerSaverIconColor:I

    .line 504
    sput v1, Lcom/android/mwilky/Renovate;->mQsStatusbarMisColor:I

    .line 505
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 507
    :goto_187
    return-void
.end method

.method public static setStatusbarPeek(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
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

    .line 396
    return-void
.end method

.method public static setUnlinkVolume(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
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

    .line 412
    return-void
.end method
