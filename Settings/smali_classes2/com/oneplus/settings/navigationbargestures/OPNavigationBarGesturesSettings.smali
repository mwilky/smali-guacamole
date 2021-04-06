.class public Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNavigationBarGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomization:Landroidx/preference/Preference;

.field private mEnterStatus:Ljava/lang/String;

.field private mGestureHiddenBar:Landroidx/preference/SwitchPreference;

.field private mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

.field private mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method public static is2ButtonEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is3ButtonEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCustomSettingsEnable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGesturalEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isHideBarEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_fullscreen_gesture_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isSideEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isSupportHardwareKeys()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "net.oneplus.launcher"

    const-string v1, "net.oneplus.launcher.gestureGuide.GestureTutorialActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_launch_gesture_tutorial_from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPreferenceChange$3()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onRadioButtonClicked$1()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onRadioButtonClicked$2()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private resetAppNavigationBarMode(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method private static setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavBarInteractionMode overlayPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPNavigationBarGesturesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabledExclusiveInCategory overlayPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static setSideEnable(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gesture_button_side_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public synthetic lambda$onCreate$0$OPNavigationBarGesturesSettings(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onPreferenceChange$3$OPNavigationBarGesturesSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->lambda$onPreferenceChange$3()V

    return-void
.end method

.method public synthetic lambda$onRadioButtonClicked$1$OPNavigationBarGesturesSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->lambda$onRadioButtonClicked$1()V

    return-void
.end method

.method public synthetic lambda$onRadioButtonClicked$2$OPNavigationBarGesturesSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->lambda$onRadioButtonClicked$2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_navigation_bar_gestures_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    const-string p1, "customization"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    const-string p1, "always_show_navigation_bar"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "gesture_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, "gesture_navigation_bar_deprecated"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v2, "gesture_hidden_bar"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const-string v3, "phone_control_way"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const-string v3, "custom_settings_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->oneplus_fixed_navigation_bar_o2:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    const-string v3, "OP_FEATURE_GESTURE_DEPRECATED"

    invoke-static {v3}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_title_for_deprecated:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    sget v4, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_summary_for_deprecated:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string v3, "OP_FEATURE_HIDE_NAVBAR"

    invoke-static {v3}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->oneplus_customization_summary_hide_navbar:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "overlay"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v3, "learn_gesture_button_container"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->learn_gesture_button:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$SqMDUtfMPpqX0AIjfoq9awLuak8;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$SqMDUtfMPpqX0AIjfoq9awLuak8;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause context resDirs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPNavigationBarGesturesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "oneplus_fullscreen_gesture_type"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 p2, 0x4

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$FBs9QW0KxYbC2etmrPZQQKvglhQ;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$FBs9QW0KxYbC2etmrPZQQKvglhQ;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->resetAppNavigationBarMode(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {p0, p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    const-wide/16 v3, 0xbb8

    const-string v5, "com.android.internal.systemui.navbar.gestural"

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->resetAppNavigationBarMode(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$gemNwH7kwFrpIyA9VNh6ACnKCLM;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$gemNwH7kwFrpIyA9VNh6ACnKCLM;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {p0, v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->resetAppNavigationBarMode(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$owtEVR48lEgyPwANgsMLWgqElWo;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$owtEVR48lEgyPwANgsMLWgqElWo;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {p0, v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume context resDirs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPNavigationBarGesturesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume getApplicationContext resDirs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    :cond_0
    const-string v0, "OP_FEATURE_GESTURE_DEPRECATED"

    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 7

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop context resDirs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPNavigationBarGesturesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "status"

    const-string v2, "always_show_navigation_bar"

    const-string v3, "back_home"

    const-string v4, "gesture_navigation_bar"

    const-string v5, "nav_gesture"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-static {v5, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-static {v5, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3"

    invoke-static {v5, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v4

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "resource"

    if-eqz v1, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "full_screen_default"

    invoke-static {v5, v6, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "full_screen_capsule"

    invoke-static {v5, v6, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "default_full_screen"

    invoke-static {v5, v6, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "capsule_full_screen"

    invoke-static {v5, v6, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p0, "others"

    invoke-static {v5, v6, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
