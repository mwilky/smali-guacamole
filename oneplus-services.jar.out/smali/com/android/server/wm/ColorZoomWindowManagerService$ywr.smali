.class Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomOnSelectedButtonWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Landroid/view/SurfaceControl;

.field final synthetic sis:Landroid/graphics/Rect;

.field final synthetic ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic tsu:Landroid/graphics/Rect;

.field final synthetic you:F

.field final synthetic zta:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->zta:F

    iput p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->you:F

    iput-object p4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->tsu:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->rtg:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->zta:F

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->you:F

    sub-float v1, v0, v1

    mul-float/2addr v1, p1

    sub-float v7, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->tsu:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->tsu:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    int-to-float v0, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->tsu:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->sis:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->tsu:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    add-int/2addr v2, v0

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v1, v3

    add-int/2addr p1, v1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->rtg:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v7

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->rtg:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
