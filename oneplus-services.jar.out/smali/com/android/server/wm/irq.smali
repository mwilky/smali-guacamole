.class public Lcom/android/server/wm/irq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final you:Ljava/lang/String; = "ColorZoomStarter"


# instance fields
.field private final zta:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public zta(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, v0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v8, "startZoomWindow"

    move/from16 v9, p3

    invoke-virtual {v7, v2, v3, v9, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    const/4 v8, 0x2

    const/4 v15, 0x0

    const/4 v9, -0x1

    if-eqz v1, :cond_3

    const-string v9, "extra_window_mode"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "id"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "type"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v14

    invoke-virtual {v14, v13, v12}, Lcom/android/server/wm/ColorZoomWindowManagerService;->shouldIgnoreStartZoomWindowFromRecent(Lcom/android/server/wm/Task;I)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v0, "ColorZoomStarter"

    const-string v1, "Ignore the startZoomWindow() from Recent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    :cond_0
    :try_start_2
    invoke-virtual {v10, v12}, Landroid/app/ActivityOptions;->setZoomLaunchFlags(I)V

    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    if-eqz v14, :cond_1

    iput v12, v14, Lcom/android/server/wm/ActivityStack;->mZoomLaunchFlags:I

    :cond_1
    iget-object v13, v13, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/high16 v14, 0x100000

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object/from16 v13, p1

    :goto_0
    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    goto :goto_1

    :cond_3
    move-object/from16 v13, p1

    move v11, v9

    move v12, v11

    :goto_1
    const-string v14, "ColorZoomStarter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startZoomWindow taskId: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,zoomLaunchFlags: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v8, 0x6

    const/16 v9, 0x65

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-eq v11, v8, :cond_5

    if-eq v1, v15, :cond_5

    if-eq v11, v15, :cond_5

    if-eq v12, v14, :cond_5

    const/4 v1, 0x2

    if-ne v12, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne v11, v9, :cond_6

    invoke-virtual {v10, v14}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v10, v15}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v10, v14}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v15, v14}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne v11, v9, :cond_7

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v9, v1

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    const-string v0, "ColorZoomStarter"

    const-string v1, "change zoomStack to full screen"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :cond_7
    :try_start_3
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/irq;->zta:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v8, "startZoomWindow"

    invoke-virtual {v0, v13, v8}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
