.class public Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPBrightnessSeekbarPreferenceCategory.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
    }
.end annotation


# instance fields
.field private isManuallyTouchingSeekbar:Z

.field private mBrightness:I

.field private mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:F

.field private mDefaultBacklightForVr:F

.field private mMaximumBacklight:F

.field private mMaximumBacklightForVr:F

.field private mMinimumBacklight:F

.field private mMinimumBacklightForVr:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private max:F

.field private min:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/android/settings/R$layout;->op_brightness_seekbar_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:F

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:F

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:F

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:F

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isInVrMode()Z

    move-result p1

    const/4 v0, -0x2

    const-string v1, "screen_brightness_float"

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:F

    const-string v4, "screen_brightness_for_vr_float"

    invoke-static {v2, v4, v3, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:F

    invoke-static {v2, v1, v3, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:F

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:F

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:F

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:F

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:F

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:F

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:F

    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:F

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iget v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:F

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:F

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return-void
.end method

.method public static synthetic lambda$TLKzjtXAQpNW-kURZY9-YtOX--k(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    const-string v1, "Failed to check vr mode!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOakProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->op_control_margin_screen_right3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget v0, Lcom/android/settings/R$id;->opseekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "seekbar progress arg1 : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mSeekBar.getProgress : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBrightnessSeekbarPreferenceCategory"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueChanged(II)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "OPBrightnessSeekbarPreferenceCategory"

    const-string v0, "start tracking seekbar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueStartTrackingTouch(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop tracking seekbar "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->saveBrightnessDataBase(I)V

    :cond_0
    return-void
.end method

.method safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 0

    const-string p0, "vrmanager"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    return-object p0
.end method

.method public setBrightness(I)V
    .locals 2

    :try_start_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    const-string p1, "OPBrightnessSeekbarPreferenceCategory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekbar brightness after set : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPBrightnessSeekbarPreferenceCategory$TLKzjtXAQpNW-kURZY9-YtOX--k;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPBrightnessSeekbarPreferenceCategory$TLKzjtXAQpNW-kURZY9-YtOX--k;-><init>(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    return-void
.end method
