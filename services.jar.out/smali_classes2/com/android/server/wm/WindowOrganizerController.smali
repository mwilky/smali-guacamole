.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20000c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field private final mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0}, Lcom/android/server/wm/BLASTSyncEngine;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 5

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20000c00

    and-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V

    or-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    :cond_2
    return v2
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    :cond_3
    return v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V
    .locals 3

    instance-of v0, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const-string v2, "WindowOrganizerController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container is no longer attached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v5

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    if-eqz v5, :cond_d

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    if-eqz v5, :cond_c

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    :goto_1
    nop

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v8, :cond_9

    const-string v9, " task="

    if-nez v8, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-ne v6, v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t reparent task to DefaultTaskDisplayArea if its parent is already DefaultTaskDisplayArea task.getParent()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    move-object v2, v8

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    move v6, v7

    :goto_2
    const-string v7, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {v0, v2, v6, v3, v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    move-object v2, v8

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_3
    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    :goto_4
    nop

    goto :goto_6

    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_5

    :cond_10
    move v6, v7

    :goto_5
    invoke-virtual {v2, v6, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_6
    const/4 v2, 0x2

    return v2

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container in hierarchy op"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)Z

    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "applySyncTransaction()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p1, :cond_15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0

    move v3, v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v10}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "WindowOrganizerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempt to operate on detached container: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3, v10}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1, v10, v11}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v11

    or-int/2addr v7, v11

    and-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_3

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v10, v11, :cond_7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v12}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "WindowOrganizerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Attempt to operate on detached container: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v16, v0

    if-ltz v3, :cond_6

    invoke-virtual {v1, v3, v13}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_6
    invoke-direct {v1, v13, v12}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    or-int/2addr v7, v0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    :cond_7
    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v10, v0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    nop

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    invoke-static {v12}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v13}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v14

    if-eqz v14, :cond_d

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_a

    iget-boolean v15, v14, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v15, :cond_a

    move-object/from16 v16, v0

    goto :goto_5

    :cond_a
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_b
    move-object/from16 v16, v0

    :goto_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    iget v15, v13, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    iget v11, v13, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v0, v14, v15, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    invoke-virtual {v0, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    :cond_c
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v0, v14, v11, v15}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_6
    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v16, v0

    goto/16 :goto_3

    :cond_e
    and-int/lit8 v0, v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_8

    :cond_f
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;

    const-class v13, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v0, v13, v11, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v11, v0

    :try_start_3
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_7
    if-ltz v0, :cond_10

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_10
    :try_start_4
    invoke-interface {v11}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    goto :goto_8

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    nop

    throw v0

    :cond_11
    :goto_8
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_12
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-ltz v3, :cond_13

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_13
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v3

    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v8, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-ltz v3, :cond_14

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_14
    nop

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    return-void
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    const-string v0, "getTaskOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method public onTransactionReady(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->mergeBlastSyncTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setSyncReady(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    return-void
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "takeScreenshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - Organizer Screenshot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v5, -0x3

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v5, "WindowOrganizerController.takeScreenshot"

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v6, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    invoke-virtual {p2, v2, v5}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid token in screenshot transaction"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
