.class Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;
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
.field final synthetic you:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic zta:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->zta:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1602(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->zta:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
