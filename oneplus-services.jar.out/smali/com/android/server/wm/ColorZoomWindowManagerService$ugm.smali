.class Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Landroid/graphics/Rect;

.field final synthetic sis:Landroid/view/SurfaceControl;

.field final synthetic ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic tsu:Landroid/graphics/Rect;

.field final synthetic you:I

.field final synthetic zta:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;FILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->zta:F

    iput p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->you:I

    iput-object p4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->sis:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->tsu:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->rtg:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->zta:F

    const v0, 0x3fa66666    # 1.3f

    mul-float v7, p1, v0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->you:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->sis:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->tsu:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;->rtg:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1000(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v6

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$400(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    return-void
.end method
