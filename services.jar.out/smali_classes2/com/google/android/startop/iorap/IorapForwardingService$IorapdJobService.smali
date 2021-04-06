.class Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;
.super Landroid/app/job/JobService;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IorapdJobService"
.end annotation


# instance fields
.field private final IORAPD_COMPONENT_NAME:Landroid/content/ComponentName;

.field private final IORAPD_JOB_INFO:Landroid/app/job/JobInfo;

.field private final mLock:Ljava/lang/Object;

.field private volatile mProxy:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

.field private final mRunningJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/startop/iorap/RequestId;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method public constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    sget-boolean p1, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const-string v0, "IorapForwardingService"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IorapdJobService (Context="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->IORAPD_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance p1, Landroid/app/job/JobInfo$Builder;

    sget v1, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_ID_IORAPD:I

    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->IORAPD_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_INTERVAL_MS:J

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setPrefetch(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->IORAPD_JOB_INFO:Landroid/app/job/JobInfo;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->IORAPD_JOB_INFO:Landroid/app/job/JobInfo;

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BgJob Scheduled (jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_ID_IORAPD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_INTERVAL_MS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onStartJob$0(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Lcom/google/android/startop/iorap/IIorap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/startop/iorap/JobScheduledEvent;->createIdleMaintenance(ILandroid/app/job/JobParameters;)Lcom/google/android/startop/iorap/JobScheduledEvent;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/google/android/startop/iorap/IIorap;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V

    return-void
.end method

.method static synthetic lambda$onStopJob$1(Landroid/app/job/JobParameters;Lcom/google/android/startop/iorap/IIorap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->createIdleMaintenance(ILandroid/app/job/JobParameters;)Lcom/google/android/startop/iorap/JobScheduledEvent;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/startop/iorap/IIorap;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V

    return-void
.end method


# virtual methods
.method public bindProxy(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mProxy:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

    return-void
.end method

.method public onIorapdDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IorapdJobService#onIorapdDisconnected"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onIorapdTaskCompleted(Lcom/google/android/startop/iorap/RequestId;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v3, "IorapdJobService#onIorapdTaskCompleted(%s), found params=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "IorapForwardingService"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished background job: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IorapForwardingService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mProxy:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting background job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v2, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;

    invoke-direct {v2, v1, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU;-><init>(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopJob(params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->mRunningJobs:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A;

    invoke-direct {v2, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A;-><init>(Landroid/app/job/JobParameters;)V

    invoke-static {v1, v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    goto :goto_1

    :cond_2
    const-string v1, "IorapForwardingService"

    const-string v2, "Untracked onStopJob request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
