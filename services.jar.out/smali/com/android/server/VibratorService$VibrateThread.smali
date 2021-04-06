.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private mForceStop:Z

.field private final mUid:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput-object p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delayLocked(J)J
    .locals 10

    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-wide v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v6, p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_0

    :goto_1
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v6, v8

    cmp-long v8, v2, v4

    if-gtz v8, :cond_0

    :goto_2
    sub-long v4, p1, v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_2
    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v4
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6

    move v0, p3

    const-wide/16 v1, 0x0

    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    array-length v0, p1

    if-lt v3, v0, :cond_2

    if-ltz p4, :cond_1

    move v0, p4

    const/4 p4, -0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_0
    if-ne v0, p3, :cond_0

    const-wide/16 v3, 0x3e8

    return-wide v3

    :cond_3
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()Z
    .locals 19

    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    array-length v5, v0

    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    invoke-static {v7}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V

    :cond_0
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    :goto_0
    iget-boolean v11, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v11, :cond_7

    if-ge v8, v5, :cond_5

    aget v11, v4, v8

    add-int/lit8 v18, v8, 0x1

    aget-wide v12, v0, v8

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-gtz v8, :cond_1

    move/from16 v8, v18

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_3

    cmp-long v8, v9, v14

    if-gtz v8, :cond_2

    add-int/lit8 v8, v18, -0x1

    invoke-direct {v1, v0, v4, v8, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v14

    move-wide v7, v12

    move-wide v13, v14

    iget-object v12, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v9, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget-object v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    move v15, v11

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;)V

    move-wide v9, v13

    goto :goto_1

    :cond_2
    move-wide v7, v12

    iget-object v12, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v12, v11}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    :cond_3
    move-wide v7, v12

    :goto_1
    invoke-direct {v1, v7, v8}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v12

    if-eqz v11, :cond_4

    sub-long/2addr v9, v12

    :cond_4
    move/from16 v8, v18

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    move v8, v6

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .locals 2

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
