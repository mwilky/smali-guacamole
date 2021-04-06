.class Lcom/android/server/wm/lqr$zta;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/lqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/lqr;


# direct methods
.method constructor <init>(Lcom/android/server/wm/lqr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private synthetic zta()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {v0}, Lcom/android/server/wm/lqr;->you(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    const-string v1, "ColorMiniZoomPointerEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp: start mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {v3}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/veq;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {v1}, Lcom/android/server/wm/lqr;->you(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v3

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "ColorMiniZoomPointerEventListener"

    const-string v2, "Next stack is not home - will restore to zoom window"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p0}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qeg()V

    goto :goto_1

    :cond_0
    const-string v1, "ColorMiniZoomPointerEventListener"

    const-string v2, "Next stack is home - will restore to full screen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {v1}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object p0, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p0}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/veq;->dma()V

    goto :goto_1

    :cond_1
    const-string v1, "ColorMiniZoomPointerEventListener"

    const-string v2, "No next stack - will restore to full screen"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {v1}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object p0, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p0}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPress: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorMiniZoomPointerEventListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p1}, Lcom/android/server/wm/lqr;->you(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "zoomwindow"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "minizoom - Long Press"

    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    iget-object p0, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p0}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->oxb(I)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p1}, Lcom/android/server/wm/lqr;->sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Lcom/android/server/wm/veq;->oxb(I)V

    iget-object p1, p0, Lcom/android/server/wm/lqr$zta;->zta:Lcom/android/server/wm/lqr;

    invoke-static {p1}, Lcom/android/server/wm/lqr;->you(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/you;

    invoke-direct {v0, p0}, Lcom/android/server/wm/you;-><init>(Lcom/android/server/wm/lqr$zta;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic you()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/lqr$zta;->zta()V

    return-void
.end method
