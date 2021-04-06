.class public Lcom/oneplus/security/network/operator/NativeOperatorDataModel;
.super Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;
.source "NativeOperatorDataModel.java"


# static fields
.field private static sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

.field private static sReferenceCount:I


# instance fields
.field private mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field protected mTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getTrafficModelInstance()Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private checkThreadPoolExistence()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;
    .locals 3

    const-class v0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    sget-object v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    monitor-enter v0

    :try_start_1
    sget p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    const-string p0, "clear_o"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a new reference incurred "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private startOperatorAccountDayQueryThread(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;-><init>(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDataUsageSystemAlert(I)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgUsedMonthlyInByte(Landroid/content/Context;I)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getNativePkgUsedInByte(I)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getPkgTotalInByte(I)J

    move-result-wide v4

    sub-long/2addr v4, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NODM updateDataUsageSystemAlert: systemLimitValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NativeOperatorDataModel"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    add-long/2addr v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v6

    :goto_0
    iget-object v8, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v8, v4, v5, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setSystemDataLimitValue(Landroid/content/Context;JI)V

    iget-object v4, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-wide/16 v8, -0x1

    invoke-static {v4, p1, v8, v9}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    add-long v6, v4, v2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v6, v7, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setSystemDataWarnValue(Landroid/content/Context;JI)V

    return-void
.end method


# virtual methods
.method public addQueryResultListener(I)V
    .locals 0

    return-void
.end method

.method public clearData()V
    .locals 4

    const-class v0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    monitor-enter v0

    :try_start_0
    const-string v1, "clear_o"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before clear opera data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    if-lez v1, :cond_0

    const-string p0, "clear_o"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear opera data partially "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-super {p0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->clearData()V

    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    invoke-interface {v1}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->clearTrafficData()V

    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_1
    sput-object v3, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    sput v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    :cond_2
    sget p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    if-gez p0, :cond_3

    sput v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->sReferenceCount:I

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAccountDay(I)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getAccountDay(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getNativePkgUsedInByte(I)J
    .locals 7

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    const/4 p0, 0x0

    aget-wide v3, v0, p0

    const/4 p0, 0x1

    aget-wide v5, v0, p0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->getNativeDataUsageWithinSpecificTime(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPkgTotalInByte(I)J
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgTotalInByte(Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPkgUsedMonthlyInByte(I)J
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgUsedMonthlyInByte(Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public removeQueryResultListener(I)V
    .locals 0

    return-void
.end method

.method public requesetDataUsage(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetDataUsage(IZ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public requesetDataUsage(IZ)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgUsedMonthlyInByte(Landroid/content/Context;I)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getPkgTotalInByte(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->getExtraDataUsage(IJZ)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requesetDataUsage total:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", used:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", extra:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", slot:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", block:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NativeOperatorDataModel"

    invoke-static {p2, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "total"

    invoke-interface {p0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    add-long/2addr v4, v0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "used"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "slotid"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requesetDataUsageAndNotify(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requesetDataUsageAndNotify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeOperatorDataModel"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->mDoingQueryTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->checkThreadPoolExistence()V

    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iput-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;-><init>(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requesetPkgMonthlyUsageAndTotalInByte(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requesetPkgMonthlyUsageAndTotalInByte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeOperatorDataModel"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->mDoingQueryTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->checkThreadPoolExistence()V

    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iput-boolean v1, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;-><init>(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestOperatorAccountDay(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getAccountDay(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyAccountDayChanged(II)V

    return-void
.end method

.method public setOperatorAccountDay(II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->saveAccountDay(Landroid/content/Context;II)V

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->startOperatorAccountDayQueryThread(I)V

    return-void
.end method

.method public setPackageMonthlyUsage(IJ)V
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p2, v0

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->savePkgUsedMonthlyInByte(Landroid/content/Context;IJ)V

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->updateDataUsageSystemAlert(I)V

    return-void
.end method

.method public setPackageTotalUsage(IJ)V
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p2, v0

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->savePkgTotalInByte(Landroid/content/Context;IJ)V

    iget-object p2, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgUsedMonthlyInByte(Landroid/content/Context;I)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->updateDataUsageSystemAlert(I)V

    :cond_0
    return-void
.end method

.method public setWarnByteValue(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataWarnValue(Landroid/content/Context;JI)V

    iget-object p2, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getPkgUsedMonthlyInByte(Landroid/content/Context;I)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->updateDataUsageSystemAlert(I)V

    :cond_0
    return-void
.end method
