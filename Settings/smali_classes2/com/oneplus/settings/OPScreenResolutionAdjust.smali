.class public Lcom/oneplus/settings/OPScreenResolutionAdjust;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDpiValues1080P:[I

.field private mDpiValuesOther:[I

.field private mEnterValue:I

.field private mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

.field private mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPScreenResolutionAdjust$5;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$5;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void

    nop

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->cancelDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->changeScreenResolution(I)V

    return-void
.end method

.method private cancelDialog()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_auto_adjust"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private changeScreenResolution(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v5

    aget p1, p1, v5

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v0, v4, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v5

    aget p1, p1, v5

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "oneplus_screen_resolution_auto_adjust"

    invoke-static {p1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    if-ne v0, v4, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    if-ne v0, v4, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    goto :goto_1

    :cond_6
    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrentOtherDpiIndex()I

    move-result v0

    aget p1, p1, v0

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    return-void
.end method

.method private getCurrent1080pDpiIndex()I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getCurrentOtherDpiIndex()I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getFHDScreenSummary()V
    .locals 3

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19811"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private getQHDScreenSummary()V
    .locals 3

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19811"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private is1080pMode()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isIntelligentSwitchMode()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOtherMode()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private openSurfaceComposerInterface()V
    .locals 4

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_screen_resolution_adjust_select:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->get1080Dpi(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string p1, "op_qhd_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_screen_resolution_adjust_other:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->settings_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "op_intelligent_switch_resolution_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const-string p1, "op_other_resolution_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_1080p_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_other_resolution_mode_19811"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_1080p_mode_19811"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getQHDScreenSummary()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getFHDScreenSummary()V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->oneplus_screen_dpi_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "op_intelligent_switch_resolution_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget p2, Lcom/android/settings/R$string;->oneplus_switch_intelligent_resolution_kill_process_tips:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(II)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    sget v0, Lcom/android/settings/R$string;->oneplus_switch_resolution_kill_process_tips:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(II)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->isOtherMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->isIntelligentSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    sget v0, Lcom/android/settings/R$string;->oneplus_switch_resolution_kill_process_tips:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_screen_resolution_adjust"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oneplus_screen_resolution_auto_adjust"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    if-eq v4, v6, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v6

    :goto_3
    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v6

    :goto_5
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v6, :cond_7

    move v5, v6

    goto :goto_6

    :cond_7
    move v5, v1

    :goto_6
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v6, :cond_8

    move v1, v6

    :cond_8
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    if-ne v0, v6, :cond_9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    if-eq p0, v0, :cond_2

    const-string p0, "status"

    const-string v1, "resolution"

    if-ne v0, v2, :cond_0

    const-string v0, "1"

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "2"

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "3"

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showWarnigDialog(II)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->oneplus_switch_resolution_kill_process_confirm:I

    new-instance v1, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance p2, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
