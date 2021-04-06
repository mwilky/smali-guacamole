.class public Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;
.super Landroidx/preference/Preference;
.source "ColorTemperatureSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$OPColorModeSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$OPColorModeSeekBarChangeListener;

.field private mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

.field private mTemperatureSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mEnable:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$layout;->preference_color_temperature_slider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private initSeekBar(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    sget v0, Lcom/android/settings/R$id;->tv_temperature_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mTemperatureSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->screen_color_mode_seekbar2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v0, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v1, "oem_screen_better_value"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->setMarkerPosition(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$1;-><init>(Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-boolean p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mEnable:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->initSeekBar(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mEnable:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mTemperatureSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setActivated(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mSeekBar:Lcom/oneplus/settings/ui/OPOneLabelSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$OPColorModeSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/ColorTemperatureSeekBarPreference$OPColorModeSeekBarChangeListener;

    return-void
.end method
