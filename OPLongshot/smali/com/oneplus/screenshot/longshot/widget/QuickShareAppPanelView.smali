.class public Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "Longshot.QuickShareAppPanelView"


# instance fields
.field private mIntervalAngel:I

.field private mMaxParts:I

.field private mPadding:I

.field private mQuickShareAppIconRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:I

.field private mStartAngle:I

.field private statusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mPadding:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    return-void
.end method

.method private computeCircumferencePoint(II)[F
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-double v1, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v0, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v1, p1

    double-to-float p1, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method private getViewCoordinates(I[F)[F
    .locals 2

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-float p1, p1

    add-float/2addr v1, p1

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p2, v0

    sub-float/2addr v1, p1

    aput v1, p2, v0

    return-object p2
.end method

.method private layoutChildren()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v4, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mRadius:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mStartAngle:I

    iget v6, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mIntervalAngel:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->computeCircumferencePoint(II)[F

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->getViewCoordinates(I[F)[F

    move-result-object v4

    aget v5, v4, v0

    iget v6, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mPadding:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mPadding:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    int-to-float v6, v5

    iput v6, v4, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    iput v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, v4, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v5, v4, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mapToCircleAngle(I)I
    .locals 1

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method public getmQuickShareAppIconRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sget-object p2, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onlayout changed="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    sget-object p1, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->TAG:Ljava/lang/String;

    const-string p2, "add mQuickShareAppIconRects"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mQuickShareAppIconRects:Ljava/util/List;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->layoutChildren()V

    sget-object p1, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "childcount = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mPadding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mRadius:I

    return-void
.end method

.method public setMaxParts(I)V
    .locals 1

    const/16 v0, 0x168

    div-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mIntervalAngel:I

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mMaxParts:I

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mapToCircleAngle(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;->mStartAngle:I

    return-void
.end method
