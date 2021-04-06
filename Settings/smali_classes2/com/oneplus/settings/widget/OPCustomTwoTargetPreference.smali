.class public Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "OPCustomTwoTargetPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;,
        Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settings/R$id;->checkbox_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    sget v0, Lcom/android/settings/R$id;->preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnGearClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnRadioButtonClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->preference:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnGearClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;->onGearClick(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->checkbox_frame:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnRadioButtonClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mChecked:Z

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnGearClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->mOnRadioButtonClickListener:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
