.class public Lcom/google/android/material/edgeeffect/SpringScrollView2;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringScrollView2$a;,
        Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;
    }
.end annotation


# instance fields
.field private A:Z

.field private a:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

.field private b:Landroid/widget/EdgeEffect;

.field private c:Landroid/widget/EdgeEffect;

.field private d:I

.field private e:I

.field private f:Landroid/view/VelocityTracker;

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:I

.field l:[I

.field private m:[I

.field n:Z

.field o:F

.field p:F

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private x:Lcom/google/android/material/edgeeffect/SpringScrollView2$a;

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    return p0
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->p()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    return-void
.end method

.method private h(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    const v1, -0x800001

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->z:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->A:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->w:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->w:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->w:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_3
    :goto_0
    const-string p1, "SpringScrollView2"

    const-string v0, "animation parameter out of range!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_2
    return v1
.end method

.method private k(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    :cond_1
    return-void
.end method

.method private n(FFFF)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->p:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->o:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g()V

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->o:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->p:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f()V

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->r:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q:Z

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->r:Z

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->o()V

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringScrollView2$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->x:Lcom/google/android/material/edgeeffect/SpringScrollView2$a;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->x:Lcom/google/android/material/edgeeffect/SpringScrollView2$a;

    return-void
.end method


# virtual methods
.method c()F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method d(II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method e(II)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->m(II)V

    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k:I

    return-void
.end method

.method f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->a:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string v0, "SpringScrollView2"

    const-string v1, "setEdgeEffectFactory first, please!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;->a(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    return-void
.end method

.method g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->a:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string v0, "SpringScrollView2"

    const-string v1, "setEdgeEffectFactory first, please!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;->a(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    return-void
.end method

.method i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    return-void
.end method

.method l()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->w:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->v:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->h(F)V

    return-void
.end method

.method public m(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b()V

    goto/16 :goto_2

    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    sub-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-eq v3, v6, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->h:I

    if-le v3, v4, :cond_7

    if-lez v1, :cond_6

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_6
    add-int/2addr v1, v4

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->j:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->p()V

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-ne v0, v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->m:[I

    aput v5, v0, v6

    aput v5, v0, v5

    :cond_d
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->t:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p2, p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->l()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->r:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->l()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ge p2, p4, :cond_3

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->u:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c()F

    move-result v0

    :cond_2
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->s:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->t:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->n(FFFF)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->r:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-le p2, p4, :cond_5

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->u:F

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c()F

    move-result v0

    :cond_4
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->s:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->t:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->n(FFFF)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->c:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->m:[I

    aput v3, v5, v4

    aput v3, v5, v3

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->m:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->k(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->b()V

    goto/16 :goto_4

    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    sub-int/2addr v2, v1

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-eq v5, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->h:I

    if-le v5, v6, :cond_8

    if-lez v2, :cond_7

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_7
    add-int/2addr v2, v6

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_8
    move v5, v3

    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-ne v5, v4, :cond_d

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->j:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->q(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->i:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    goto :goto_2

    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->u:F

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->p()V

    move v3, v4

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_3
    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->g:I

    :cond_d
    :goto_4
    if-nez v3, :cond_e

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->t:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method q(IILandroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->j(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->l:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->r(II[I)V

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->l:[I

    aget v3, v2, v1

    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->n(FFFF)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->e(II)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_7
    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    :goto_2
    return v0
.end method

.method r(II[I)V
    .locals 0
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    aput p2, p3, p1

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->y:F

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectDisable(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->z:Z

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->A:Z

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->a:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->i()V

    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->n:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->d:I

    :cond_0
    return-void
.end method

.method public setVelocityMultiplier(F)V
    .locals 0

    return-void
.end method
