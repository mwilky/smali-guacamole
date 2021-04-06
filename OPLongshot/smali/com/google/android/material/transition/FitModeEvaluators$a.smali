.class final Lcom/google/android/material/transition/FitModeEvaluators$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/transition/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;FLcom/google/android/material/transition/d;)V
    .locals 1

    iget v0, p3, Lcom/google/android/material/transition/d;->f:F

    iget p3, p3, Lcom/google/android/material/transition/d;->d:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p3, p2

    sub-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public b(Lcom/google/android/material/transition/d;)Z
    .locals 1

    iget v0, p1, Lcom/google/android/material/transition/d;->d:F

    iget p1, p1, Lcom/google/android/material/transition/d;->f:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(FFFFFFF)Lcom/google/android/material/transition/d;
    .locals 2

    invoke-static {p4, p6, p2, p3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    move-result v0

    div-float p2, v0, p4

    div-float p3, v0, p6

    mul-float/2addr p5, p2

    mul-float/2addr p7, p3

    new-instance v1, Lcom/google/android/material/transition/d;

    move-object p1, v1

    move p4, v0

    move p6, v0

    invoke-direct/range {p1 .. p7}, Lcom/google/android/material/transition/d;-><init>(FFFFFF)V

    return-object v1
.end method
