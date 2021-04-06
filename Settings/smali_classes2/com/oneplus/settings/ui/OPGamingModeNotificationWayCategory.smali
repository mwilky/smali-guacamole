.class public Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;
.super Landroidx/preference/Preference;
.source "OPGamingModeNotificationWayCategory.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLayoutResId:I

.field private mNoficationWaySummary:Landroid/widget/TextView;

.field private mShieldingNotificationImageView:Landroid/widget/ImageView;

.field private mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$layout;->op_gaming_mode_notification_way_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p2, Lcom/android/settings/R$layout;->op_gaming_mode_notification_way_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/android/settings/R$layout;->op_gaming_mode_notification_way_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    sget v0, Lcom/android/settings/R$id;->suspension_notice_anim:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$id;->weak_text_reminding_anim:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$id;->shielding_notificationimageview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$id;->nofication_way_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->op_shielding_notification_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->op_shielding_notification_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->startAnim()V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setAnimTypes(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->stopAnim()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_weak_text_reminding_summary:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_shielding_notification_summary:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_suspension_notice_summary:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "game_mode_block_notification"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setAnimTypes(I)V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    return-void
.end method
