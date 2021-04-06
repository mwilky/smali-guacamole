.class public Lcom/oneplus/settings/OPVideoMemc;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPVideoMemc.java"

# interfaces
.implements Lcom/oneplus/settings/OnChangeScreen;
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSmoothMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mSupportVideo:Landroidx/preference/PreferenceCategory;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

.field mVideoScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private addSupportAppPreference(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mSupportVideo:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    new-instance v6, Landroidx/preference/Preference;

    iget-object v7, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPVideoMemc;->mSupportVideo:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_memc_support_no_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoMemc;->mSupportVideo:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    :goto_3
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_memc_support_no_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoMemc;->mSupportVideo:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private getSupportVideo(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "OPVideoMemc"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    invoke-interface {v1}, Lcom/oneplus/iris/IOneplusIrisManager;->getMemcRateMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportVideo name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportGame e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private is1080pMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

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


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPVideoMemc"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->op_video_memc:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->oneplus_memc_open:I

    sget v2, Lcom/android/settings/R$string;->oneplus_memc_close:I

    invoke-virtual {p1, v0, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    new-instance v0, Lcom/oneplus/settings/OPMEMCSwitchBarController;

    iget-object v2, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v5, "video"

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/OPMEMCSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/oneplus/settings/OnChangeScreen;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_iris_video_memc_status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    const-string p1, "video_memc"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mVideoScreen:Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mVideoScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mVideoScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "op_iris_video_memc_mode"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v3, "video_smooth"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPVideoMemc;->mSmoothMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string v3, "video_acme"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPVideoMemc;->is1080pMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v4, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->oneplus_memc_video_nosupport_extreme_summary:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move p1, v1

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/OPVideoMemc;->mSmoothMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/OPVideoMemc;->mSmoothMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    const-string v0, "support_video"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mSupportVideo:Landroidx/preference/PreferenceCategory;

    const-string v0, "get_more_video"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPVideoMemc;->getSupportVideo(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPVideoMemc;->addSupportAppPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onChangeScreen(Z)V
    .locals 2

    const-string v0, "op_iris_video_memc_status"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mVideoScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mVideoScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get_more_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.heytap.market"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPVideoMemc;->mSmoothMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "op_iris_video_memc_mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPVideoMemc;->getSupportVideo(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPVideoMemc;->addSupportAppPreference(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_1

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPVideoMemc;->mTheAcmeMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/oneplus/settings/OPVideoMemc;->getSupportVideo(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPVideoMemc;->addSupportAppPreference(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
