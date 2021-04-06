.class public Lcom/oneplus/settings/widget/OPLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "OPLottieAnimPreference.java"


# instance fields
.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieFileId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/android/settings/R$layout;->op_lottie_anim_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settings/R$id;->anim_notification_lottie:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget p1, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieFileId:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->startAnimation(I)V

    return-void
.end method

.method public releaseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method public startAnimation(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieFileId:I

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method
