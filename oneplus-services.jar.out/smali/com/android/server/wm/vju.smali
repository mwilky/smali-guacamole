.class Lcom/android/server/wm/vju;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final kth:Ljava/lang/String; = "ColorStackPositionerController"


# instance fields
.field protected cno:Lcom/android/server/wm/cgv;

.field private rtg:Lcom/android/server/wm/DisplayContent;

.field private final sis:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field private ssp:Lcom/android/server/wm/WindowState;

.field private final tsu:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final you:Lcom/android/server/input/InputManagerService;

.field private final zta:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/vju;->you:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/android/server/wm/vju;->sis:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/vju;->tsu:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method private synthetic ssp()V
    .locals 2

    const-string v0, "ColorStackPositionerController"

    const-string v1, "finishStackPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/vju;->zta()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/vju;->rtg:Lcom/android/server/wm/DisplayContent;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    invoke-virtual {v0}, Lcom/android/server/wm/cgv;->lqr()V

    return-void
.end method


# virtual methods
.method bio(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string p0, "ColorStackPositionerController"

    const-string p1, "startMovingStack: Bad IBinder "

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_2

    const-string p1, "ColorStackPositionerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMovingStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has no input channel,  probably being removed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "ColorStackPositionerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMovingStack: Invalid display content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/vju;->rtg:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/vju;->sis:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->inZoomWindowMode(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "ColorStackPositionerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMovingStack: unzoomwindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4
    new-instance v2, Lcom/android/server/wm/cgv;

    iget-object v3, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/vju;->sis:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/cgv;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    iget v2, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string v2, "ColorStackPositionerController"

    const-string v3, "long press event - need setBackgroundBlur()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    iget-object v3, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/cgv;->ire(Lcom/android/server/wm/WindowState;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    iget-object v3, p0, Lcom/android/server/wm/vju;->rtg:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/cgv;->ear(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    iget-object v2, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_6

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v4, :cond_6

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    iget-object v1, v1, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/vju;->you:Lcom/android/server/input/InputManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    iget-object v3, v3, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    invoke-virtual {v3}, Lcom/android/server/wm/a;->sis()Landroid/view/InputChannel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string p1, "ColorStackPositionerController"

    const-string v1, "startMovingStack: Unable to transfer touch focus"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/vju;->zta()V

    monitor-exit v0

    return-void

    :cond_7
    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/cgv;->fto(FF)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_8
    :goto_0
    :try_start_2
    const-string p1, "ColorStackPositionerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMovingStack: Bad window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public synthetic cno()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vju;->ssp()V

    return-void
.end method

.method public kth(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/cgv;->ugm(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    :cond_0
    return-void
.end method

.method rtg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sis(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/vju;->cno:Lcom/android/server/wm/cgv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->you()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/vju;->you()V

    :cond_0
    return-void
.end method

.method protected tsu()Lcom/android/server/wm/WindowState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vju;->ssp:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method you()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vju;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ssp;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/vju;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
