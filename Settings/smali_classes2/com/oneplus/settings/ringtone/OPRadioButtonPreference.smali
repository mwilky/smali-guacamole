.class public Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OPRadioButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    sget v0, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    sget v0, Lcom/android/settings/R$layout;->op_preference_radio:I

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    return-void
.end method
