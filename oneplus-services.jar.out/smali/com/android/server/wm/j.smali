.class public Lcom/android/server/wm/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpActivityTaskManagerService;


# static fields
.field private static final rtg:Ljava/lang/String; = "OpActivityTaskManagerService"

.field private static final tsu:Z


# instance fields
.field private sis:Z

.field private you:Lcom/android/server/wm/ActivityTaskManagerService;

.field private zta:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/j;->tsu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/j;->zta:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/j;->sis:Z

    return-void
.end method

.method private you(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)Lcom/oplus/app/OplusAppInfo;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p1, "OpActivityTaskManagerService"

    const-string p2, "getMoreVisibleAppInfoLocked: invalid params"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private zta(Ljava/lang/String;)I
    .locals 3

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAllTopAppInfos()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "android.permission.REAL_GET_TASKS"

    invoke-direct {v0, v1}, Lcom/android/server/wm/j;->zta(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/j;->you:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-ltz v4, :cond_15

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_1
    if-ltz v11, :cond_13

    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v12, v3, v3}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v15

    new-instance v5, Lcom/oplus/app/OplusAppInfo;

    invoke-direct {v5}, Lcom/oplus/app/OplusAppInfo;-><init>()V

    iput v3, v5, Lcom/oplus/app/OplusAppInfo;->displayId:I

    const-string v3, "OpActivityTaskManagerService"

    move-object/from16 v16, v2

    if-eqz v13, :cond_11

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v2, v5, Lcom/oplus/app/OplusAppInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v5, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    :goto_2
    iput v2, v5, Lcom/oplus/app/OplusAppInfo;->taskId:I

    iput v14, v5, Lcom/oplus/app/OplusAppInfo;->activityType:I

    iput v15, v5, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v5, Lcom/oplus/app/OplusAppInfo;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v2

    iput v2, v5, Lcom/oplus/app/OplusAppInfo;->orientation:I

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v2, v5, Lcom/oplus/app/OplusAppInfo;->userId:I

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v2, v5, Lcom/oplus/app/OplusAppInfo;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_1

    iget-object v14, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/oplus/app/OplusAppInfo;->isRootActivity:Z

    :cond_1
    const/4 v2, 0x2

    if-eq v15, v2, :cond_a

    const/4 v2, 0x5

    if-ne v15, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    sget-boolean v9, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllTopAppInfos fullscreen top = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v2

    goto/16 :goto_4

    :cond_4
    const/4 v14, 0x3

    if-ne v15, v14, :cond_6

    sget-boolean v14, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAllTopAppInfos split screen primary top = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v6, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v2

    goto :goto_4

    :cond_6
    const/4 v14, 0x4

    if-ne v15, v14, :cond_8

    sget-boolean v14, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAllTopAppInfos split screen second top = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez v7, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    goto :goto_4

    :cond_8
    const/16 v14, 0x64

    if-ne v15, v14, :cond_c

    sget-boolean v14, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAllTopAppInfos zoom window top = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v8, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v2

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, 0x1

    sget-boolean v14, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v14, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAllTopAppInfos pinned or freeform top = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    invoke-direct {v0, v12, v13}, Lcom/android/server/wm/j;->you(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)Lcom/oplus/app/OplusAppInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    sget-boolean v12, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllTopAppInfos more  top = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/oplus/app/OplusAppInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v7, :cond_f

    if-nez v6, :cond_10

    :cond_f
    if-eqz v9, :cond_12

    :cond_10
    sget-boolean v5, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v5, :cond_14

    const-string v5, "getAllTopAppInfos have done"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    const/4 v2, 0x1

    sget-boolean v5, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skip for null top stack = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    add-int/lit8 v11, v11, -0x1

    move v5, v2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v16, v2

    move v2, v5

    :cond_14
    :goto_5
    add-int/lit8 v4, v4, -0x1

    move v5, v2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    return-object v1

    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.REAL_GET_TASKS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartActivityFromRecents()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStartActivityFromRecents(): isStartActivityFromRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/j;->sis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpActivityTaskManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/j;->sis:Z

    return p0
.end method

.method public getTopRunningPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/j;->you:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/j;->you:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public isKeyguardGoingAway()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/j;->you:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result p0

    return p0
.end method

.method public setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x27

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->setPCBVisibility(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/j;->zta:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

    const-string v1, "OpActivityTaskManagerService"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResumedActivityUncheckLocked(): getPackageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/j;->zta:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->setBooleanNotificationRemoteInputeDraft(Z)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/wm/j;->tsu:Z

    if-eqz p1, :cond_3

    const-string p1, "setResumedActivityUncheckLocked(): pendingOptions=null"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/j;->zta:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->setBooleanNotificationRemoteInputeDraft(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setStartActivityFromRecents(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/j;->tsu:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartActivityFromRecents(): flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpActivityTaskManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/j;->sis:Z

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/j;->zta:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method
