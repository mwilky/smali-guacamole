.class Lcom/android/server/location/gnss/NtpTimeHelper;
.super Ljava/lang/Object;
.source "NtpTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field static final NTP_INTERVAL:J = 0x5265c00L

.field static final RETRY_INTERVAL:J = 0x493e0L

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final STATE_RETRIEVING_AND_INJECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInjectNtpTimeState:I

.field private final mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NtpTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

    iput-object p4, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NtpTimeHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private blockingGetNtpTimeAndInject()V
    .locals 15

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v4}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    :cond_1
    monitor-enter p0

    const/4 v4, 0x2

    :try_start_0
    iput v4, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    iget-object v5, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v5

    move-object v1, v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-gez v2, :cond_3

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v9

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getCertaintyMillis()J

    move-result-wide v11

    sget-boolean v5, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "NtpTimeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NTP server returned: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") ntpResult: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " system time offset: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v2, v5

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v13, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/location/gnss/-$$Lambda$NtpTimeHelper$4YVWiahGRCeX2AoEdhSeek4fqhQ;

    move-object v5, v14

    move-object v6, p0

    move-wide v7, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/server/location/gnss/-$$Lambda$NtpTimeHelper$4YVWiahGRCeX2AoEdhSeek4fqhQ;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;JJJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/32 v5, 0x5265c00

    iget-object v7, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v7}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    goto :goto_0

    :cond_3
    const-string v2, "NtpTimeHelper"

    const-string/jumbo v3, "requestTime failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v2

    move-wide v5, v2

    :goto_0
    sget-boolean v2, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "NtpTimeHelper"

    const-string/jumbo v3, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/gnss/-$$Lambda$UoXKjYaYgPPHqNIgiLAobtz5XAU;

    invoke-direct {v3, p0}, Lcom/android/server/location/gnss/-$$Lambda$UoXKjYaYgPPHqNIgiLAobtz5XAU;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private isNetworkConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$0f3JRUuSYH-K-brPBZMOA96D-q4(Lcom/android/server/location/gnss/NtpTimeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method


# virtual methods
.method declared-synchronized enablePeriodicTimeInjection()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$blockingGetNtpTimeAndInject$0$NtpTimeHelper(JJJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

    long-to-int v5, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;->injectTime(JJI)V

    return-void
.end method

.method declared-synchronized onNetworkAvailable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retrieveAndInjectNtpTime()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$NtpTimeHelper$0f3JRUuSYH-K-brPBZMOA96D-q4;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$NtpTimeHelper$0f3JRUuSYH-K-brPBZMOA96D-q4;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
