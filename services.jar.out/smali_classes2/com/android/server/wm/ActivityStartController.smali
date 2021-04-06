.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/wm/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStartController$StartHandler;-><init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .locals 1

    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method doPendingActivityLaunches(Z)V
    .locals 12

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v8, v1

    const/4 v1, 0x0

    const-string v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    move-object v2, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during pending activity launch pal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "  "

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    return-void

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    if-eqz v4, :cond_17

    if-eqz v5, :cond_16

    array-length v0, v4

    array-length v6, v5

    if-ne v0, v6, :cond_15

    if-eqz p3, :cond_0

    move/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_0
    move v6, v0

    const/4 v0, -0x1

    move/from16 v7, p4

    if-eq v7, v0, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    :goto_1
    nop

    if-ltz p2, :cond_2

    const/4 v9, -0x1

    move v10, v9

    move/from16 v9, p2

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    move v9, v6

    move v10, v8

    move/from16 v25, v10

    move v10, v9

    move/from16 v9, v25

    goto :goto_2

    :cond_3
    move v9, v0

    move v10, v0

    :goto_2
    const/16 v11, -0x2710

    invoke-static {v9, v8, v11}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v11

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    :try_start_0
    sget-object v12, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    invoke-static {v4, v12}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    move-object v4, v12

    :try_start_1
    array-length v12, v4

    new-array v12, v12, [Lcom/android/server/wm/ActivityStarter;

    move-object v14, v12

    const/4 v12, 0x0

    move v13, v12

    :goto_3
    array-length v12, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    const/16 v21, 0x0

    if-ge v13, v12, :cond_b

    :try_start_2
    aget-object v12, v4, v13

    const/16 v22, 0x0

    invoke-virtual {v12}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    move/from16 v16, v21

    :goto_4
    move/from16 p2, v16

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v12, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    aget-object v16, v5, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v23, v13

    move-object v13, v0

    move-object v7, v14

    move-object/from16 v14, v16

    move-object/from16 v24, v7

    move-object v7, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, p11

    move/from16 v18, v11

    :try_start_3
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v14, p11

    invoke-virtual {v13, v12, v14}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v12, v13

    if-eqz v12, :cond_5

    :try_start_4
    iget-object v13, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-interface {v13, v0, v11, v15, v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v13

    move-object/from16 v22, v13

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v15, p9

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object/from16 v11, p6

    goto/16 :goto_12

    :cond_5
    move-object/from16 v13, v22

    :goto_5
    if-eqz v12, :cond_7

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_6

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_6
    :try_start_5
    array-length v14, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move/from16 v15, v23

    if-ne v15, v14, :cond_8

    const/16 v21, 0x1

    :cond_8
    move/from16 v14, v21

    if-eqz v14, :cond_9

    move-object/from16 v16, p10

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    :goto_7
    move-object/from16 p7, v16

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v4, p12

    :try_start_6
    invoke-virtual {v1, v0, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    move-object/from16 v18, v0

    aget-object v0, v5, v15

    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v11, p6

    :try_start_7
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v21, v2

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v22, v2

    move-object/from16 v2, p13

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v2, p14

    :try_start_8
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    aput-object v0, v24, v15

    add-int/lit8 v13, v15, 0x1

    move-object/from16 v2, p1

    move-object v15, v7

    move-object/from16 v4, v16

    move/from16 v11, v17

    move-object/from16 v14, v24

    const/4 v0, -0x1

    move/from16 v7, p4

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v11, p6

    :goto_8
    move/from16 v2, p14

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    goto/16 :goto_12

    :cond_a
    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v24, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v13, "File descriptors passed in Intent"

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_4
    move-exception v0

    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    goto/16 :goto_12

    :cond_b
    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v24, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    :try_start_9
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    const/4 v12, 0x1

    if-le v0, v12, :cond_e

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "startActivities: different apps ["

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_d

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v12, -0x1

    if-ne v13, v14, :cond_c

    const-string v14, "]"

    goto :goto_a

    :cond_c
    const-string v14, ", "

    :goto_a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_d
    const-string v13, " from "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    :goto_b
    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    goto/16 :goto_12

    :cond_e
    :goto_c
    move-object/from16 v12, p9

    const/4 v0, 0x1

    :try_start_b
    new-array v13, v0, [Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    const/4 v0, 0x0

    move-object/from16 v15, p9

    :goto_d
    move-object/from16 v2, v24

    :try_start_d
    array-length v3, v2

    if-ge v0, v3, :cond_14

    aget-object v3, v2, v0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-gez v3, :cond_10

    add-int/lit8 v18, v0, 0x1

    move/from16 v4, v18

    :goto_e
    :try_start_e
    array-length v5, v2

    if-ge v4, v5, :cond_f

    iget-object v5, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move/from16 v18, v6

    :try_start_f
    aget-object v6, v2, v4

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, p8

    move/from16 v6, v18

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v6, v17

    goto/16 :goto_10

    :cond_f
    move/from16 v18, v6

    nop

    :try_start_10
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_7
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v6, v17

    goto/16 :goto_11

    :catchall_8
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v24, v2

    move/from16 v6, v17

    goto/16 :goto_10

    :cond_10
    move/from16 v18, v6

    :try_start_11
    aget-object v4, v13, v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    if-eqz v4, :cond_11

    :try_start_12
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move/from16 v6, v17

    if-ne v5, v6, :cond_12

    :try_start_13
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 v24, v2

    move-object v15, v5

    const/16 v17, 0x1

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_10

    :catchall_a
    move-exception v0

    move/from16 v6, v17

    move-object/from16 v24, v2

    goto :goto_10

    :cond_11
    move/from16 v6, v17

    :cond_12
    move-object v15, v12

    :try_start_14
    array-length v5, v2

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_13

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    move-object/from16 v24, v2

    const/high16 v2, 0x10000000

    :try_start_15
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    goto :goto_10

    :cond_13
    move-object/from16 v24, v2

    :goto_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p5

    move-object/from16 v5, p8

    move-object/from16 v4, p12

    move/from16 v2, p14

    move/from16 v17, v6

    move/from16 v6, v18

    goto/16 :goto_d

    :catchall_c
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v6, v17

    goto :goto_10

    :cond_14
    move-object/from16 v24, v2

    move/from16 v18, v6

    move/from16 v6, v17

    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    monitor-exit v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v21

    :catchall_e
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v18, v6

    move/from16 v6, v17

    :goto_10
    :try_start_18
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    throw v0

    :catchall_f
    move-exception v0

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    :goto_11
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_12

    :catchall_11
    move-exception v0

    goto :goto_11

    :catchall_12
    move-exception v0

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    goto :goto_12

    :catchall_13
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v15, p9

    goto :goto_12

    :catchall_14
    move-exception v0

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v15, p9

    :goto_12
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_15
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 22

    const-string v0, "startActivityInPackage"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    const/4 v8, 0x0

    const-string v19, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, v1

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 14

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p16

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v9, p5

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v15, p12

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 p13, v0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    move/from16 v0, p18

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 6

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v3, p4, Lcom/android/server/wm/TaskDisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    :try_start_0
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHomeActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v1
.end method

.method startSetupActivity()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    if-nez v5, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    :cond_3
    return-void
.end method
