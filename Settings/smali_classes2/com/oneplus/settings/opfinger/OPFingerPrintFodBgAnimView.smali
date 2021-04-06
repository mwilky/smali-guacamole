.class public Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintFodBgAnimView.java"


# instance fields
.field private mFodBgView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPath_1:Landroid/widget/ImageView;

.field private mPath_10:Landroid/widget/ImageView;

.field private mPath_11:Landroid/widget/ImageView;

.field private mPath_2:Landroid/widget/ImageView;

.field private mPath_3:Landroid/widget/ImageView;

.field private mPath_4:Landroid/widget/ImageView;

.field private mPath_5:Landroid/widget/ImageView;

.field private mPath_6:Landroid/widget/ImageView;

.field private mPath_7:Landroid/widget/ImageView;

.field private mPath_8:Landroid/widget/ImageView;

.field private mPath_9:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setCenterVisible(Z)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->op_finger_enroll_fod_bg_anim_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_01:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_02:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_03:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_04:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_05:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_06:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_07:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_08:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_09:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_10:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/settings/R$id;->opfinger_fod_anim_bg_11:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setCenterVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEdgeVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startTouchDownAnim()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f70a3d7    # 0.94f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f70a3d7    # 0.94f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v12, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v5, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3f882b93

    const/16 v18, 0x2

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x2

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v13, v5

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x21e

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x2

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x20

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1fe

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x40

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1de

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x60

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1be

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x80

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x19e

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0xa0

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x17e

    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v2, 0xc0

    invoke-virtual {v5, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3f882b93

    const v13, 0x3f882b93

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
