.class public Lcom/android/settings/widget/MasterSwitchPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "MasterSwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$layout;->restricted_preference_widget_master_switch:I

    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/widget/MasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterSwitchPreference$1;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/settings/widget/-$$Lambda$MasterSwitchPreference$MOwqTCx9EkHhner_fFxqj10fKpk;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$MasterSwitchPreference$MOwqTCx9EkHhner_fFxqj10fKpk;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mCheckedSet:Z

    if-nez v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mCheckedSet:Z

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
