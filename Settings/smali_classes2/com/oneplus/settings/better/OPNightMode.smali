.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# static fields
.field public static final DEFAULT_COLOR_PROGRESS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoActivatePreference:Landroidx/preference/ListPreference;

.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mEnterAutoOpenValue:I

.field private mEnterBrightnessValue:F

.field private mEnterScreenColorValue:I

.field private mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

.field private mNightModeEnabledPreference:Landroidx/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroidx/preference/Preference;

.field private mTurnOnTimePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x67

    :goto_0
    sput v0, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$7;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPNightMode$7;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPNightMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$6;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPNightMode;)Landroid/hardware/display/ColorDisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPNightMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    return-void
.end method

.method public static convertAutoMode(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private disableEntryForWellbeingGrayscale()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "night_display_activated"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_2

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    if-eqz v4, :cond_3

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz p0, :cond_5

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveBrightnessProgress(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_nightmode_brightness_progress"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private saveColorTemperatureProgress(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_nightmode_progress_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private saveSaturationProgress(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_screen_saturation_value"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onBrightnessProgressChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveBrightnessProgress(I)V

    return-void
.end method

.method public onBrightnessStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onBrightnessStopTrackingTouch(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/better/OPNightMode;->onBrightnessProgressChanged(IZ)V

    return-void
.end method

.method public onColorProgressChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    return-void
.end method

.method public onColorStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onColorStopTrackingTouch(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_night_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v0, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const-string v0, "night_mode_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "auto_activate"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    const-string v0, "turn_on_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroidx/preference/Preference;

    const-string v0, "turn_off_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroidx/preference/Preference;

    const-string v0, "night_mode_level_op"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result p1

    invoke-static {p1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    new-instance p1, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {p1, v0}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    const-string p1, "display"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x2

    const-string v1, "reading_mode_status"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    new-instance v7, Lcom/google/android/material/picker/TimePickerDialog;

    new-instance v3, Lcom/oneplus/settings/better/OPNightMode$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "night_mode_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    iget-object p2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {p2, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    iget-object p2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {p2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgress()I

    move-result p2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgress()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getSaturationProgress()I

    move-result v2

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange colorProgress:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " brightnessProgress:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " saturationProgress:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "OPNightMode"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    invoke-direct {p0, p2}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->saveBrightnessProgress(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportColorSaturationAdjustment()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->saveSaturationProgress(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "auto_activate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p2, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayAutoMode(I)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result p1

    invoke-static {p1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v2

    :cond_0
    const-string v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mEnterAutoOpenValue:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v2, "oem_nightmode_progress_status"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mEnterScreenColorValue:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_brightness_progress"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mEnterBrightnessValue:F

    return-void
.end method

.method public onSaturationProgressChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveSaturationProgress(I)V

    return-void
.end method

.method public onSaturationStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onSaturationStopTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v1, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v1

    iget v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mEnterAutoOpenValue:I

    const-string v3, "night_mode"

    if-eq v2, v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/better/OPNightMode;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_open"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v4, "oem_nightmode_progress_status"

    const/4 v5, -0x2

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mEnterScreenColorValue:I

    const-string v4, "3"

    const-string v6, "2"

    const-string v7, "1"

    const-wide v8, 0x3fe51eb851eb851fL    # 0.66

    const-wide v10, 0x3fd51eb851eb851fL    # 0.33

    if-eq v2, v1, :cond_3

    int-to-double v12, v1

    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v2

    int-to-double v14, v2

    mul-double/2addr v14, v10

    cmpg-double v2, v12, v14

    const-string v14, "screen_color"

    if-gtz v2, :cond_1

    invoke-static {v3, v14, v7}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v2

    int-to-double v10, v2

    mul-double/2addr v10, v8

    cmpg-double v2, v12, v10

    if-gtz v2, :cond_2

    invoke-static {v3, v14, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-static {v3, v14, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v10, "oem_nightmode_brightness_progress"

    invoke-static {v1, v10, v2, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iget v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mEnterBrightnessValue:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_6

    float-to-double v10, v1

    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v2

    int-to-double v12, v2

    const-wide v14, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v12, v14

    cmpg-double v2, v10, v12

    const-string v5, "brightness"

    if-gtz v2, :cond_4

    invoke-static {v3, v5, v7}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v2

    int-to-double v12, v2

    mul-double/2addr v12, v8

    cmpg-double v2, v10, v12

    if-gtz v2, :cond_5

    invoke-static {v3, v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_6

    invoke-static {v3, v5, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
