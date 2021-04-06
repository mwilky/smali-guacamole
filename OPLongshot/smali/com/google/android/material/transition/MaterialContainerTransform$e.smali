.class final Lcom/google/android/material/transition/MaterialContainerTransform$e;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/transition/MaskEvaluator;

.field private final b:Landroid/graphics/PathMeasure;

.field private final c:F

.field private final d:[F

.field private final e:Landroid/view/View;

.field private final f:Landroid/graphics/RectF;

.field private final g:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final h:Landroid/view/View;

.field private final i:Landroid/graphics/RectF;

.field private final j:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final k:Landroid/graphics/Paint;

.field private final l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Z

.field private final s:Lcom/google/android/material/transition/a;

.field private final t:Lcom/google/android/material/transition/c;

.field private final u:Z

.field private final v:Landroid/graphics/Paint;

.field private final w:Landroid/graphics/Path;

.field private x:Lcom/google/android/material/transition/b;

.field private y:Lcom/google/android/material/transition/d;

.field private z:F


# direct methods
.method private constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;IIZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/c;Lcom/google/android/material/transition/MaterialContainerTransform$d;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/google/android/material/transition/MaskEvaluator;

    invoke-direct {v0}, Lcom/google/android/material/transition/MaskEvaluator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->a:Lcom/google/android/material/transition/MaskEvaluator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->d:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->w:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->z:F

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->f:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object p5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->h:Landroid/view/View;

    iput-object p6, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->i:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->j:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-boolean p10, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->r:Z

    iput-object p11, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->s:Lcom/google/android/material/transition/a;

    iput-object p12, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->t:Lcom/google/android/material/transition/c;

    iput-object p13, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    iput-boolean p14, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->u:Z

    iget-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    invoke-direct {p2, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->o:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    invoke-direct {p2, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    invoke-direct {p2, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->q:Landroid/graphics/RectF;

    invoke-static {p3}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->h(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p6}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->h(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p3

    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p5, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->c:F

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    invoke-static {p9}, Lcom/google/android/material/transition/TransitionUtils;->createColorShader(I)Landroid/graphics/Shader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->j(F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;IIZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/c;Lcom/google/android/material/transition/MaterialContainerTransform$d;ZLcom/google/android/material/transition/MaterialContainerTransform$a;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/google/android/material/transition/MaterialContainerTransform$e;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;IIZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/c;Lcom/google/android/material/transition/MaterialContainerTransform$d;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/transition/MaterialContainerTransform$e;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->i(F)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/transition/MaterialContainerTransform$e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/transition/MaterialContainerTransform$e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->h:Landroid/view/View;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .locals 2
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->h(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p2

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    iget v4, v0, Lcom/google/android/material/transition/d;->b:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->x:Lcom/google/android/material/transition/b;

    iget v5, v0, Lcom/google/android/material/transition/b;->b:I

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$e$b;

    invoke-direct {v6, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$e$b;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$e;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$c;)V

    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    iget v4, v0, Lcom/google/android/material/transition/d;->a:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->x:Lcom/google/android/material/transition/b;

    iget v5, v0, Lcom/google/android/material/transition/b;->a:I

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$e$a;

    invoke-direct {v6, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$e$a;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$e;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$c;)V

    return-void
.end method

.method private static h(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private i(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->j(F)V

    :cond_0
    return-void
.end method

.method private j(F)V
    .locals 13

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->z:F

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->r:Z

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v3, v2, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->b:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->c:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->d:[F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->d:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->t:Lcom/google/android/material/transition/c;

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    move v5, p1

    invoke-interface/range {v4 .. v11}, Lcom/google/android/material/transition/c;->c(FFFFFFF)Lcom/google/android/material/transition/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    iget v5, v2, Lcom/google/android/material/transition/d;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    sub-float v7, v1, v7

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iget v2, v2, Lcom/google/android/material/transition/d;->d:F

    add-float/2addr v2, v0

    invoke-virtual {v4, v7, v0, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    iget v5, v4, Lcom/google/android/material/transition/d;->e:F

    div-float v7, v5, v6

    sub-float v7, v1, v7

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    iget v4, v4, Lcom/google/android/material/transition/d;->f:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v7, v0, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->t:Lcom/google/android/material/transition/c;

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    invoke-interface {v2, v4}, Lcom/google/android/material/transition/c;->b(Lcom/google/android/material/transition/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->o:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->q:Landroid/graphics/RectF;

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v0, v1, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    move-result v0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sub-float v0, v5, v0

    :goto_2
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->t:Lcom/google/android/material/transition/c;

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->y:Lcom/google/android/material/transition/d;

    invoke-interface {v1, v4, v0, v2}, Lcom/google/android/material/transition/c;->a(Landroid/graphics/RectF;FLcom/google/android/material/transition/d;)V

    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->a:Lcom/google/android/material/transition/MaskEvaluator;

    iget-object v7, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v8, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->j:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v9, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->o:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->q:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v12

    move v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/material/transition/MaskEvaluator;->evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/MaterialContainerTransform$c;)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform$c;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->l:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/transition/MaterialContainerTransform$c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->s:Lcom/google/android/material/transition/a;

    invoke-interface {v2, p1, v0, v1}, Lcom/google/android/material/transition/a;->a(FFF)Lcom/google/android/material/transition/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->x:Lcom/google/android/material/transition/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->u:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->a:Lcom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/MaskEvaluator;->clip(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->x:Lcom/google/android/material/transition/b;

    iget-boolean v1, v1, Lcom/google/android/material/transition/b;->c:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->g(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->f(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->f(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->g(Landroid/graphics/Canvas;)V

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->u:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->w:Landroid/graphics/Path;

    const v2, -0xff01

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->o:Landroid/graphics/RectF;

    const/16 v1, -0x100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->n:Landroid/graphics/RectF;

    const v1, -0xff0100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->q:Landroid/graphics/RectF;

    const v1, -0xff0001

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$e;->p:Landroid/graphics/RectF;

    const v1, -0xffff01

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$e;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
