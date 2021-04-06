.class public Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPSuwScreenColorMode.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;


# static fields
.field public static final DEFAULT_COLOR_PROGRESS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static isSupportAdaptive:Z

.field private static isSupportDcip3:Z

.field private static isSupportMMDisplayColor:Z

.field private static isSupportSoft:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceProvision:Z

.field private mHandler:Landroid/os/Handler;

.field private mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

.field private mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeContentObserver:Landroid/database/ContentObserver;

.field private mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

.field private mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeValue:I

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportMMDisplayColor:Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    sput v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$3;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;-><init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportMMDisplayColor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/OPSuwPreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    return-object p0
.end method

.method private updateAdvancedSettingsRadioButtons()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_advanced_settings_value"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 4

    const-string v0, "screen_color_mode_seekbar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportMMDisplayColor:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v3, p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_5
    const/16 v3, 0xa

    if-ne v3, p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 3

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_color_mode_settings_value"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_suw_screen_color_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.read_mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "screen_color_mode_default_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "screen_color_mode_basic_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v3, "screen_color_mode_auto_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_ntsc"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_srgb"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_display_p3"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ui/OPSuwPreferenceCategory;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    const-string v4, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    const-string v4, "screen_color_mode_seekbar"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    sget-boolean v4, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportMMDisplayColor:Z

    const-string v5, "oneplus_screen_color_mode_basic_divider"

    const-string v6, "screen_color_mode_soft_settings_divider"

    const-string v7, "screen_color_mode_auto_settings_divider"

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->screen_color_mode_vivid:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->screen_color_mode_advanced:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "screen_color_mode_adaptive_model_settings_divider"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "screen_color_mode_advanced_settings_divider"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v3, "oem.dcip3.support"

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportDcip3:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "screen_color_mode_defined_settings_divider"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.display.adaptive.mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportAdaptive:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.display.soft.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportSoft:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    move v1, v0

    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeviceProvision = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPScreenColorMode"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iput p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_screen_better_value"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "screen_color_mode_seekbar"

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v5, 0x2

    if-ne p1, v4, :cond_4

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    if-eq p1, v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_6

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    sget-boolean p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportMMDisplayColor:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_8

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_a

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_c

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_e

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Lcom/android/settings/ui/OPSuwPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v2, -0x2

    const-string v4, "screen_color_mode_advanced_settings_value"

    if-ne p1, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_f
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_10
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_11
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the screen color mode settings value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPSuwScreenColorMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->updateRadioButtons(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->updateAdvancedSettingsRadioButtons()V

    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_color_mode_settings_value"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_screen_better_value"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeValue(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$layout;->op_suw_screen_color_mode_preview:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    return-void
.end method
