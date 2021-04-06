.class public Lcom/google/android/material/appbar/a;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/a$d;,
        Lcom/google/android/material/appbar/a$c;,
        Lcom/google/android/material/appbar/a$f;,
        Lcom/google/android/material/appbar/a$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Lcom/google/android/material/appbar/a$f;

.field private F:Ljava/lang/CharSequence;

.field private G:Lcom/google/android/material/emptyview/a;

.field private H:Z

.field private I:I

.field private J:Z

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:F

.field private O:Ljava/lang/CharSequence;

.field private P:Lcom/google/android/material/appbar/a$e;

.field private final a:I

.field private b:Z

.field private c:Lcom/google/android/material/appbar/Appbar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroidx/appcompat/widget/Toolbar;

.field private e:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Rect;

.field final m:Lcom/google/android/material/internal/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field q:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:Landroid/animation/ValueAnimator;

.field private u:J

.field private v:I

.field private w:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private x:Lcom/google/android/material/appbar/a$e;

.field y:I

.field z:Landroidx/core/view/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/appbar/a;)Lcom/google/android/material/appbar/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/a;->E:Lcom/google/android/material/appbar/a$f;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/appbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/a;->H:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/appbar/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->H:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/appbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/a;->J:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/appbar/a;)Lcom/google/android/material/appbar/a$e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/a;->x:Lcom/google/android/material/appbar/a$e;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/appbar/a;)Lcom/google/android/material/appbar/a$e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/a;->P:Lcom/google/android/material/appbar/a$e;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/appbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/a;->D:Z

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/appbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/a;->C:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/appbar/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/a;->k:I

    return p1
.end method

.method static synthetic j(Lcom/google/android/material/appbar/a;)Lcom/google/android/material/emptyview/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/a;->G:Lcom/google/android/material/emptyview/a;

    return-object p0
.end method

.method private k(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->l()V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/google/android/material/appbar/a;->u:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/appbar/a;->r:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/a$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/a$b;-><init>(Lcom/google/android/material/appbar/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/appbar/a;->r:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private l()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/material/appbar/Appbar;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/material/appbar/Appbar;

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/Appbar;->s(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_1
    iput-object v4, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/a;->d:Landroidx/appcompat/widget/Toolbar;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    move-object v0, v4

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/google/android/material/appbar/a;->d:Landroidx/appcompat/widget/Toolbar;

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->x()V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/a;->b:Z

    return-void
.end method

.method private static o(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static q(Landroid/view/View;)Lcom/google/android/material/appbar/c;
    .locals 2

    sget v0, Lb/a/b/a/f;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/appbar/c;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/c;-><init>(Landroid/view/View;)V

    sget v1, Lb/a/b/a/f;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private setImageViewVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->M(Z)V

    :cond_1
    return-void
.end method

.method private setSyncCollapsSubTitleNull(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->R(Z)V

    return-void
.end method

.method private u(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private w()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private x()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/material/appbar/a$c;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/material/appbar/a;->N:F

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/a;->N:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v2}, Lcom/google/android/material/internal/a;->p()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->l()V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/google/android/material/appbar/a;->r:I

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->o:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->A:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->K(F)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->z:Landroidx/core/view/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/core/view/x;->e()I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-lez v0, :cond_7

    iget-object v2, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/a;->y:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/a;->y:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->k()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/a;->N:F

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/a;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->O([I)Z

    const/4 v0, 0x0

    throw v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->m()Lcom/google/android/material/appbar/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->m()Lcom/google/android/material/appbar/a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->n(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/a$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->d()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->e()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->g()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->i()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->k:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->j:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->h:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->i:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->j()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->k()F

    move-result v0

    return v0
.end method

.method getScrimAlpha()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/appbar/a;->u:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/appbar/a;->v:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->z:Landroidx/core/view/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/x;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getScrollOffsetHeight()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/appbar/a;->B:I

    iget v1, p0, Lcom/google/android/material/appbar/a;->a:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->m()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubtitleImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->o()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected m()Lcom/google/android/material/appbar/a$c;
    .locals 2

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/a$c;-><init>(II)V

    return-object v0
.end method

.method protected n(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/a$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->o0(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->w:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/material/appbar/a$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/a$d;-><init>(Lcom/google/android/material/appbar/a;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/a;->w:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->w:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/a$c;-><init>(II)V

    iput v1, v0, Lcom/google/android/material/appbar/b;->a:I

    iget-object v3, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/a$c;-><init>(II)V

    iput v1, v0, Lcom/google/android/material/appbar/b;->a:I

    iget-object v3, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/material/appbar/a$a;

    invoke-direct {v3, p0}, Lcom/google/android/material/appbar/a$a;-><init>(Lcom/google/android/material/appbar/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/material/appbar/a$c;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/a$c;-><init>(II)V

    iput v1, v0, Lcom/google/android/material/appbar/b;->a:I

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->T(Landroid/widget/TextView;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->V(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->P(Landroid/widget/TextView;)V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->w:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->p(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->x:Lcom/google/android/material/appbar/a$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/material/appbar/a;->x:Lcom/google/android/material/appbar/a$e;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->G:Lcom/google/android/material/emptyview/a;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/android/material/appbar/a;->G:Lcom/google/android/material/emptyview/a;

    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->z:Landroidx/core/view/x;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/x;->e()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    iget-boolean v4, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-nez v4, :cond_0

    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->T(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/a;->q(Landroid/view/View;)Lcom/google/android/material/appbar/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/appbar/c;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    if-eqz p1, :cond_16

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->o:Z

    if-eqz p1, :cond_16

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/a;->p(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/appbar/a;->f:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    invoke-static {p0, v3, v4}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-static {v3}, Lcom/google/android/material/appbar/a;->o(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/a/b/a/d;->op_control_margin_space2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lb/a/b/a/d;->op_app_bar_height_with_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lb/a/b/a/d;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :cond_6
    iget-object v3, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lb/a/b/a/d;->op_control_margin_space2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/appbar/a;->I:I

    iget-object v5, p0, Lcom/google/android/material/appbar/a;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v1, :cond_a

    const/4 v1, 0x2

    if-eq v5, v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "net.oneplus.weather"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_three_menu_width:I

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_two_menu_width:I

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_one_menu_width:I

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_width:I

    :goto_6
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/a;->I:I

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget v5, p0, Lcom/google/android/material/appbar/a;->I:I

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/a;->N(I)V

    :cond_c
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->O:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->k()F

    move-result v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lb/a/b/a/d;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/a;->I:I

    :cond_d
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget-object v5, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {v7}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {v8}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/appbar/a;->I:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/2addr v8, v3

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/material/internal/a;->t(IIII)V

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/a$c;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    iget v1, p0, Lcom/google/android/material/appbar/a;->I:I

    goto :goto_7

    :cond_e
    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    const/16 v3, 0x2a

    iget-object v4, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p1, :cond_f

    if-nez v4, :cond_10

    iget v4, p0, Lcom/google/android/material/appbar/a;->j:I

    goto :goto_8

    :cond_f
    if-nez v4, :cond_10

    iget v4, p0, Lcom/google/android/material/appbar/a;->h:I

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    :goto_8
    iget-object v5, p0, Lcom/google/android/material/appbar/a;->l:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x8

    if-nez v6, :cond_11

    iget v6, p0, Lcom/google/android/material/appbar/a;->i:I

    goto :goto_9

    :cond_11
    iget v6, p0, Lcom/google/android/material/appbar/a;->i:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v6, v8

    :goto_9
    add-int/2addr v5, v6

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_13

    iget p1, p0, Lcom/google/android/material/appbar/a;->h:I

    goto :goto_a

    :cond_12
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_13

    iget p1, p0, Lcom/google/android/material/appbar/a;->j:I

    goto :goto_a

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    :goto_a
    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_14

    iget p1, p0, Lcom/google/android/material/appbar/a;->k:I

    goto :goto_b

    :cond_14
    iget p1, p0, Lcom/google/android/material/appbar/a;->k:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_b
    sub-int/2addr p5, p1

    invoke-virtual {v2, v4, v5, p4, p5}, Lcom/google/android/material/internal/a;->C(IIII)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_15

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/google/android/material/internal/a;->s(IIII)V

    :cond_15
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->r()V

    :cond_16
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->o()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->F:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_17
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/text/SpannableString;

    iget-object p3, p0, Lcom/google/android/material/appbar/a;->F:Ljava/lang/CharSequence;

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lb/a/b/a/c;->op_control_accent_color_red_default:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object p4, p0, Lcom/google/android/material/appbar/a;->F:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/16 p5, 0x11

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    if-eqz p1, :cond_1a

    if-ne p1, p0, :cond_19

    goto :goto_d

    :cond_19
    iget-boolean p2, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-eqz p2, :cond_1c

    goto :goto_e

    :cond_1a
    :goto_d
    iget-boolean p1, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-eqz p1, :cond_1b

    :goto_e
    iget p1, p0, Lcom/google/android/material/appbar/a;->a:I

    goto :goto_f

    :cond_1b
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    :cond_1c
    invoke-static {p1}, Lcom/google/android/material/appbar/a;->o(Landroid/view/View;)I

    move-result p1

    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->y()V

    iget-boolean p1, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_10
    if-ge v0, p1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/a;->q(Landroid/view/View;)Lcom/google/android/material/appbar/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/appbar/a;->B:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    iget-boolean p2, p0, Lcom/google/android/material/appbar/a;->D:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/material/appbar/a;->a:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->l()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->z:Landroidx/core/view/x;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/x;->e()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method final p(Landroid/view/View;)I
    .locals 3

    invoke-static {p1}, Lcom/google/android/material/appbar/a;->q(Landroid/view/View;)Lcom/google/android/material/appbar/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/a$c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/appbar/c;->b()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, p1

    return v2
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->D:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->C:Z

    return v0
.end method

.method public setCollapsedSubtitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->u(I)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->v(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->w(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->x(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->y(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->z(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->A(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->Y(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentViewVelocity(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setContentVelocity(I)V

    :cond_0
    return-void
.end method

.method public setDisableCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->D:Z

    return-void
.end method

.method public setDisableScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->C:Z

    return-void
.end method

.method public setDrawLineEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->B(Z)V

    return-void
.end method

.method public setExpandedSubtitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->D(I)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->E(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->F(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setExpandedTitleAlpha(I)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->n()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->h()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v6}, Lcom/google/android/material/internal/a;->f()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    div-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    new-instance v8, Landroid/content/res/ColorStateList;

    new-array v10, v3, [[I

    const/4 v11, 0x1

    new-array v12, v11, [I

    const v13, 0x101009e

    aput v13, v12, v2

    aput-object v12, v10, v2

    new-array v12, v2, [I

    aput-object v12, v10, v11

    new-array v12, v3, [I

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v12, v2

    aput v0, v12, v11

    invoke-direct {v8, v10, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v8}, Lcom/google/android/material/internal/a;->S(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    aput v8, v5, v2

    aput v1, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    aput v8, v5, v2

    aput v6, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    aput v7, v5, v2

    aput v1, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v3, [[I

    new-array v4, v11, [I

    aput v13, v4, v2

    aput-object v4, v1, v2

    new-array v4, v2, [I

    aput-object v4, v1, v11

    new-array v3, v3, [I

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v2

    aput v6, v3, v11

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    int-to-float v2, p1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    int-to-float v2, p1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    int-to-float v2, p1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->G(I)V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/a;->k:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/a;->j:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/a;->h:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/a;->i:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->H(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->I(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->K:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->J(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setOverFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->H:Z

    return-void
.end method

.method public setPrepareDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->A:Z

    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->c:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->Y(Landroid/view/View;)V

    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->Y(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput-wide p1, p0, Lcom/google/android/material/appbar/a;->u:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/appbar/a;->v:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/appbar/a;->v:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->y()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/a;->v(ZZ)V

    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/a;->r:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->Y(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/a;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->Q(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/b/a/d;->op_control_icon_size_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Lcom/google/android/material/appbar/a$c;

    invoke-direct {v1, v0, v0}, Lcom/google/android/material/appbar/a$c;-><init>(II)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/google/android/material/appbar/b;->a:I

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/a;->L(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setSyncSubtitleAlpha(I)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->n()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->f()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v8, v3, [[I

    const/4 v9, 0x1

    new-array v10, v9, [I

    const v11, 0x101009e

    aput v11, v10, v2

    aput-object v10, v8, v2

    new-array v10, v2, [I

    aput-object v10, v8, v9

    new-array v10, v3, [I

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v10, v2

    aput v0, v10, v9

    invoke-direct {v6, v8, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/a;->S(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v9, [I

    aput v11, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v9

    new-array v5, v3, [I

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aput v6, v5, v2

    aput v1, v5, v9

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v9, [I

    aput v11, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v9

    new-array v3, v3, [I

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v3, v2

    aput v1, v3, v9

    invoke-direct {v0, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/widget/ImageView;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    int-to-float v2, p1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    int-to-float v2, p1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->S(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->U(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->w()V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->n:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->n:Z

    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->w()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->x()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->m:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->q()Z

    move-result v0

    return v0
.end method

.method public v(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->s:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/a;->k(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setScrimAlpha(I)V

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->s:Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/a;->y:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/a;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method
