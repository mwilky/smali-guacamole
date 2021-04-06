.class public Lcom/oneplus/screenshot/longshot/widget/ImageView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;,
        Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ImageView"

.field private static final TOUCH_MODE_FLING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomY:I

.field private mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

.field private mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:I

.field protected mIsFirstScroll:Z

.field protected mNavBarHeight:I

.field private mOffsetY:I

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    new-instance v1, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    const/16 v1, 0x190

    iput v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setImagePadding(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->createGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->trackMotionScroll(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->scrollIntoSlots()V

    return-void
.end method

.method private endFlingAtEdge(I)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->access$000(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V

    return p1
.end method

.method private initDrawMatrix()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v2, v1

    sub-int v1, v3, v1

    mul-int v5, v2, v1

    mul-int v6, v4, v3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    if-le v5, v6, :cond_0

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v8

    move v2, v7

    move v7, v3

    goto :goto_0

    :cond_0
    int-to-float v4, v4

    int-to-float v2, v2

    div-float v2, v4, v2

    int-to-float v1, v1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v8

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr v7, v8

    float-to-int v1, v7

    int-to-float v1, v1

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 0

    return-void
.end method

.method private trackMotionScroll(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_3

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_2

    :cond_2
    if-ge p1, v0, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    return v0
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v3

    add-int/2addr v3, v0

    sget v5, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->divHeight:I

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    iget p2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->initDrawMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-lez p1, :cond_1

    div-int/lit8 p1, p1, 0x2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onCancel()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUp()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    return-void
.end method

.method public setBitmaps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setImagePadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->setPadding(I)V

    return-void
.end method

.method public setNavBarHeight(I)V
    .locals 4

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    return-void
.end method
