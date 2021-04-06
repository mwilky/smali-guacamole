.class Lcom/android/server/wm/ColorZoomWindowManagerService$zta;
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
.field final synthetic zta:Lcom/android/server/wm/ColorZoomWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1102(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1200(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1002(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1400(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1300(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mExpandScaleAnim onAnimationCancel mTmpFullBtCanceledMergedScale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1000(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTmpFullBtCanceledMergedRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1400(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1100(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1200(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1002(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1400(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1300(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mExpandScaleAnim onAnimationEnd() mTmpFullBtCanceledMergedScale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1000(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTmpFullBtCanceledMergedRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1400(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1102(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z

    return-void
.end method
