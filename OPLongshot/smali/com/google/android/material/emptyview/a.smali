.class public Lcom/google/android/material/emptyview/a;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/emptyview/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Space;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private final g:[I

.field private final h:[I

.field private i:I

.field private j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/google/android/material/emptyview/EmptyImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/google/android/material/emptyview/a$a;

.field private y:I


# direct methods
.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroidx/core/view/f;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/f;->c(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/emptyview/a;->f:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/f;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/a;->d:I

    invoke-static {p1, v0}, Landroidx/core/view/f;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/a;->e:I

    invoke-static {p1, v0}, Landroidx/core/view/f;->c(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/a;->f:I

    :cond_1
    return-void
.end method


# virtual methods
.method public c(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_a

    sget p4, Lb/a/b/a/f;->empty_base:I

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lb/a/b/a/d;->control_empty_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/material/emptyview/a;->n:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lb/a/b/a/d;->control_empty_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-ne p2, v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lb/a/b/a/f;->empty_image:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v3, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x38d

    const/16 v5, 0x8

    if-ge v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/a;->k:Z

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/google/android/material/emptyview/a;->k:Z

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lb/a/b/a/f;->empty_image:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p4, p1, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p4

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v1, v4, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/16 v3, 0x1c2

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lb/a/b/a/f;->control_empty_space1:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/emptyview/a;->y:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v3, p0, Lcom/google/android/material/emptyview/a;->n:Z

    if-eqz v3, :cond_3

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/material/emptyview/a;->o:I

    if-le v3, v2, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x320

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v4, Lb/a/b/a/f;->empty_middle_text:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/emptyview/a;->y:I

    sub-int/2addr v4, p2

    invoke-virtual {p1, p3, v0, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p4, p1, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, p3, p2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/emptyview/a;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/emptyview/a;->l:Z

    goto :goto_3

    :cond_6
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/a;->l:Z

    if-eqz v1, :cond_b

    :cond_7
    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v2, Lb/a/b/a/f;->empty_image:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_8

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v1, v4, :cond_8

    iput-boolean v0, p0, Lcom/google/android/material/emptyview/a;->l:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/emptyview/a;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_b
    :goto_3
    return-void
.end method

.method public getBottomActionTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmptyImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    return-object v0
.end method

.method public getEmptyPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/emptyview/a;->y:I

    return v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMiddleActionTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopActionTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lb/b/a/f;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v1, v1, Lcom/google/android/material/appbar/a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->a:Landroid/widget/Space;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/emptyview/a;->b:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->x:Lcom/google/android/material/emptyview/a$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->x:Lcom/google/android/material/emptyview/a$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/material/emptyview/a$a;->a(II)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->stopNestedScroll()V

    iput v1, p0, Lcom/google/android/material/emptyview/a;->i:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/material/emptyview/a;->i:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startNestedScroll(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/a;->e:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/f;->c(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/emptyview/a;->f:I

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0}, Lcom/google/android/material/emptyview/EmptyImageView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/emptyview/EmptyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    move v0, v2

    move v5, v0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v6, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/emptyview/a;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/b/a/d;->control_empty_image_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lb/a/b/a/d;->op_control_margin_space3:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lb/a/b/a/d;->control_empty_base_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lb/a/b/a/d;->op_control_margin_space2:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lb/a/b/a/d;->control_empty_home_status_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v5, p1, v0

    :cond_4
    if-le v5, p2, :cond_6

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->a:Landroid/widget/Space;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyImageView;->b()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcom/google/android/material/emptyview/a;->m:Z

    sget v0, Lb/a/b/a/f;->empty_image:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object v5, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    move v5, v2

    :goto_1
    if-ge v2, p1, :cond_9

    iget-object v6, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-le v5, v3, :cond_a

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyImageView;->b()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startNestedScroll(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_9

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/emptyview/a;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Landroidx/core/view/f;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/f;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/a;->d:I

    invoke-static {p1, v0}, Landroidx/core/view/f;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/a;->e:I

    invoke-static {p1, v0}, Landroidx/core/view/f;->c(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/a;->f:I

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lcom/google/android/material/emptyview/a;->f:I

    invoke-static {p1, v0}, Landroidx/core/view/f;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/view/f;->d(Landroid/view/MotionEvent;I)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v5, p0, Lcom/google/android/material/emptyview/a;->d:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v0}, Landroidx/core/view/f;->e(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/emptyview/a;->e:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/google/android/material/emptyview/a;->i:I

    if-ne v5, v2, :cond_4

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iput v3, p0, Lcom/google/android/material/emptyview/a;->i:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/google/android/material/emptyview/a;->i:I

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iget v2, p0, Lcom/google/android/material/emptyview/a;->i:I

    if-nez v2, :cond_a

    if-nez v1, :cond_6

    iget v0, p0, Lcom/google/android/material/emptyview/a;->e:I

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput p1, p0, Lcom/google/android/material/emptyview/a;->e:I

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->h:[I

    iget-object v1, p0, Lcom/google/android/material/emptyview/a;->g:[I

    invoke-virtual {p0, v3, v0, p1, v1}, Landroid/widget/LinearLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->g:[I

    aget v1, p1, v4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/emptyview/a;->e:I

    aget p1, p1, v4

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/emptyview/a;->e:I

    :cond_5
    move v9, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/google/android/material/emptyview/a;->g:[I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/LinearLayout;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/android/material/emptyview/a;->e:I

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->g:[I

    aget v0, v0, v4

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_6
    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_7

    float-to-int p1, p1

    :goto_2
    iput p1, p0, Lcom/google/android/material/emptyview/a;->e:I

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/emptyview/a;->a()V

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent MotionEventCompat.getX Exception e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPEmptyPageView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/a;->e:I

    invoke-static {p1, v3}, Landroidx/core/view/f;->c(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/a;->f:I

    :cond_9
    iput v2, p0, Lcom/google/android/material/emptyview/a;->i:I

    :cond_a
    :goto_3
    return v4

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionClickedListener(Lcom/google/android/material/emptyview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/emptyview/a;->x:Lcom/google/android/material/emptyview/a$a;

    return-void
.end method

.method public setBottomActionColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setBottomActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBottomActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setBottomActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCanScroll(Lcom/google/android/material/appbar/a;)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/emptyview/a;->b:Z

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/emptyview/a;->y:I

    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v2, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setIsEmpty(Z)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    sget v0, Lb/a/b/a/f;->control_empty_space1:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDescription(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lb/a/b/a/f;->empty_content:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEmptyImageVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/emptyview/EmptyImageView;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->r:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->r:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/emptyview/EmptyImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/emptyview/a;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/emptyview/a;->q:Lcom/google/android/material/emptyview/EmptyImageView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setMiddleActionColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setMiddleActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setMiddleActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setMiddleActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/emptyview/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/emptyview/a;->o:I

    iput p4, p0, Lcom/google/android/material/emptyview/a;->y:I

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->j:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setShowInDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/emptyview/a;->c:Z

    return-void
.end method

.method public setTopActionColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTopActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTopActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setTopActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
