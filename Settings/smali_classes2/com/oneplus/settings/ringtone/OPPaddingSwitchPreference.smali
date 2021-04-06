.class public Lcom/oneplus/settings/ringtone/OPPaddingSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "OPPaddingSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$layout;->op_switch_preference_widget:I

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/android/settings/R$layout;->op_switch_preference_widget:I

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p1, Lcom/android/settings/R$layout;->op_switch_preference_widget:I

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method
