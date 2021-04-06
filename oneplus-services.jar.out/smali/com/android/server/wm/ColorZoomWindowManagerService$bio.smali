.class Lcom/android/server/wm/ColorZoomWindowManagerService$bio;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

.field final synthetic zta:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;->zta:Landroid/graphics/Rect;

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

    const-string v0, "mRestorePositionAnim onAnimationEnd targetRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;->zta:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;->zta:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
