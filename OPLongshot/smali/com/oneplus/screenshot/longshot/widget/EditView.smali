.class public Lcom/oneplus/screenshot/longshot/widget/EditView;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditView"

.field private static final TOUCH_MODE_EDIT:I = 0x3


# instance fields
.field private mCutBottom:I

.field private mCutPosition:I

.field private mDimDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->EditView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->trackMotionDrag(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->hitDrag(II)Z

    move-result p0

    return p0
.end method

.method private hitDrag(II)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private trackMotionDrag(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V

    return-object v0
.end method

.method public getCutPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v5, 0x1

    sub-int v7, v0, v7

    add-int/2addr v4, v6

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v0, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x6

    iget p2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    return-void
.end method

.method public setCutPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return-void
.end method
