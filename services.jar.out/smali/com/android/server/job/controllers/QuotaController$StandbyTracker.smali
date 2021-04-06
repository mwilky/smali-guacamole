.class final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Quota"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    const/4 v6, 0x5

    if-eq v0, v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    if-ne v7, v6, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-eq v0, v6, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v5, v0}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    :cond_5
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2, v1}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    :try_start_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
