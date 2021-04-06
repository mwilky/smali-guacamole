.class public Lcom/oneplus/settings/better/OPScreenColorMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenColorMode.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;


# static fields
.field public static final DEFAULT_COLOR_PROGRESS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static isSupportAdaptive:Z

.field private static isSupportDcip3:Z

.field private static isSupportMMDisplayColor:Z

.field private static isSupportSoft:Z


# instance fields
.field private mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvision:Z

.field private mEnterAdvancedValue:I

.field private mEnterColorModeValue:I

.field private mEnterValue:I

.field private mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

.field private mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeContentObserver:Landroid/database/ContentObserver;

.field private mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

.field private mScreenColorModeValue:I

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportMMDisplayColor:Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    sput v0, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$3;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPScreenColorMode$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$2;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPScreenColorMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updatePreferenceStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportMMDisplayColor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    return-object p0
.end method

.method private updateAdvancedSettingsRadioButtons()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_advanced_settings_value"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updatePreferenceStatus()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_status_manual"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->oneplus_screen_color_mode_title_summary:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->oneplus_screen_color_mode_reading_mode_on_summary:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 4

    const-string v0, "screen_color_mode_seekbar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportMMDisplayColor:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v3, p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_5
    const/16 v3, 0xa

    if-ne v3, p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

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

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

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
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_screen_color_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.read_mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "screen_color_mode_default_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "screen_color_mode_basic_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v2, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v3, "screen_color_mode_auto_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_ntsc"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_srgb"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings_display_p3"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v4, "screen_color_mode_advanced_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v4, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    const-string v4, "screen_color_mode_seekbar"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    sget-boolean v4, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportMMDisplayColor:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->oneplus_screen_color_mode_default:I

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->oneplus_screen_color_mode_defined:I

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v3, "oem.dcip3.support"

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.display.adaptive.mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.display.soft.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

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
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeviceProvision = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPScreenColorMode"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

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

    iput p2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_screen_better_value"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v2, "screen_color_mode_seekbar"

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v5, 0x2

    if-ne p1, v4, :cond_4

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    if-eq p1, v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v4, :cond_6

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    sget-boolean p1, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportMMDisplayColor:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v4, :cond_8

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v4, :cond_a

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v4, :cond_c

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v4, :cond_e

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAutoSettings:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeCustomPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v2, -0x2

    const-string v4, "screen_color_mode_advanced_settings_value"

    if-ne p1, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_f
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_10
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsNTSC:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsSRGB:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdvancedSettingsDisplayP3:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_11
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the screen color mode settings value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenColorMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateRadioButtons(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updatePreferenceStatus()V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateAdvancedSettingsRadioButtons()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v2, "oem_screen_better_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterValue:I

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_advanced_settings_value"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterAdvancedValue:I

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterColorModeValue:I

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

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenCustomColorMode()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 15

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterValue:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "3"

    const-string v5, "2"

    const-string v6, "1"

    const-string v7, "screen_calibration"

    if-eq v0, v1, :cond_2

    const-string v1, "status"

    if-ne v0, v2, :cond_0

    invoke-static {v7, v1, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v8, 0xa

    if-ne v0, v8, :cond_1

    invoke-static {v7, v1, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    invoke-static {v7, v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v8, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v9, "oem_screen_better_value"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-wide v8, 0x3fe51eb851eb851fL    # 0.66

    const-wide v10, 0x3fd51eb851eb851fL    # 0.33

    const-string v12, "custom"

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v13, -0x2

    const-string v14, "screen_color_mode_advanced_settings_value"

    invoke-static {v0, v14, v3, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterAdvancedValue:I

    if-eq v0, v3, :cond_5

    const-string v3, "advanced"

    if-nez v0, :cond_3

    invoke-static {v7, v3, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    invoke-static {v7, v3, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-static {v7, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    if-eq v1, v0, :cond_8

    int-to-double v2, v1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result v0

    int-to-double v13, v0

    mul-double/2addr v13, v10

    cmpg-double v0, v2, v13

    if-gtz v0, :cond_6

    invoke-static {v7, v12, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result v0

    int-to-double v13, v0

    mul-double/2addr v13, v8

    cmpg-double v0, v2, v13

    if-gtz v0, :cond_7

    invoke-static {v7, v12, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result v0

    if-gt v1, v0, :cond_8

    invoke-static {v7, v12, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mEnterColorModeValue:I

    if-eq v0, v1, :cond_b

    int-to-double v2, v1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result v0

    int-to-double v13, v0

    mul-double/2addr v13, v10

    cmpg-double v0, v2, v13

    if-gtz v0, :cond_9

    invoke-static {v7, v12, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result v0

    int-to-double v10, v0

    mul-double/2addr v10, v8

    cmpg-double v0, v2, v10

    if-gtz v0, :cond_a

    invoke-static {v7, v12, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->getSeekBarMax()I

    move-result p0

    if-gt v1, p0, :cond_b

    invoke-static {v7, v12, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeValue(I)V

    return-void
.end method
