.class Lcom/android/server/wm/ColorZoomWindowManagerService$cno;
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

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1902(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1600(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1802(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRestoreAlphaAnim onAnimationCancel mTmpCanceledMergedAlpha = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1800(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1900(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z

    move-result p1

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1802(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    if-eqz p1, :cond_0

    const-string p1, "mRestoreAlphaAnim normal end setButtonSelectedState: DEFAULT_ACTION"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    iget-object p1, p1, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/cgv;->hmo(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRestoreAlphaAnim onAnimationEnd() mTmpCanceledAlpha = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1800(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$1902(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z

    return-void
.end method
