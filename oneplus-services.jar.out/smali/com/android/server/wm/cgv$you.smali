.class final Lcom/android/server/wm/cgv$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/a$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/cgv;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/cgv;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/cgv;Lcom/android/server/wm/cgv$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/cgv$you;-><init>(Lcom/android/server/wm/cgv;)V

    return-void
.end method


# virtual methods
.method public zta(Landroid/view/MotionEvent;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v0}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    :goto_0
    invoke-static {p1, v2}, Lcom/android/server/wm/cgv;->you(Lcom/android/server/wm/cgv;Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {p1}, Lcom/android/server/wm/cgv;->sis(Lcom/android/server/wm/cgv;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v2}, Lcom/android/server/wm/cgv;->rtg(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v3}, Lcom/android/server/wm/cgv;->tsu(Lcom/android/server/wm/cgv;)Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/cgv;->ssp(Lcom/android/server/wm/cgv;II)V

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v2}, Lcom/android/server/wm/cgv;->rtg(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v5}, Lcom/android/server/wm/cgv;->cno(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    iget-object v2, v2, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    iget-object v2, v2, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    iget-object v5, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    iget-object v5, v5, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {v6}, Lcom/android/server/wm/cgv;->cno(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/wm/cgv;->kth(Lcom/android/server/wm/cgv;IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {p1}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    float-to-int v0, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    iget-object v2, v2, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/cgv$you;->zta:Lcom/android/server/wm/cgv;

    invoke-static {p0}, Lcom/android/server/wm/cgv;->cno(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/server/wm/cgv;->bio(Lcom/android/server/wm/cgv;IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "ColorStackPositioner"

    const-string v0, "Exception caught by drag handleMotion"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method
