.class public Lcom/oneplus/settings/OPCustomToneSettings;
.super Lcom/oneplus/settings/OPQuitConfirmFragment;
.source "OPCustomToneSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/OnPressListener;


# instance fields
.field private mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPCustomToneSettings;)Lcom/oneplus/settings/ui/OPCustomTonePreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    return-object p0
.end method

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPCustomToneSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPCustomToneSettings$1;-><init>(Lcom/oneplus/settings/OPCustomToneSettings;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPCustomToneSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->op_custom_tone_settings:I

    return p0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$OPCustomToneSettings(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPCustomToneSettings;->lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected needShowWarningDialog()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->needShowWarningDialog()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string p1, "op_custom_fingerprint_anim"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p2, Lcom/android/settings/R$string;->oneplus_finger_print_anim_save:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_ic_check:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance p2, Lcom/oneplus/settings/-$$Lambda$OPCustomToneSettings$epD9P_6do2KzQcx36E6hd77bAQI;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/-$$Lambda$OPCustomToneSettings$epD9P_6do2KzQcx36E6hd77bAQI;-><init>(Lcom/oneplus/settings/OPCustomToneSettings;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
