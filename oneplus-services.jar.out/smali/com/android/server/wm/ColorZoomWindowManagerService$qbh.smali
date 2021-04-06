.class Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomOnSelectedButtonWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic zta:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->zta:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMiniBtSelectedAnim onAnimationEnd() targetRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->zta:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$100(Lcom/android/server/wm/ColorZoomWindowManagerService;)Lcom/android/server/wm/veq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->zta:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;->zta:Landroid/graphics/Rect;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomMode(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
