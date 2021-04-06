.class Lcom/android/server/wm/ColorZoomWindowManagerService$dma;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomWithAnim(Lcom/android/server/wm/ActivityStack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Landroid/graphics/Rect;

.field final synthetic tsu:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic you:F

.field final synthetic zta:Lcom/android/server/wm/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->tsu:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->zta:Lcom/android/server/wm/ActivityStack;

    iput p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->you:F

    iput-object p4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->sis:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "ColorZoomWindowManagerService"

    const-string v0, "restore from mini zoom onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->tsu:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->zta:Lcom/android/server/wm/ActivityStack;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->you:F

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;->sis:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->restorePositionFromMiniZoom(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
