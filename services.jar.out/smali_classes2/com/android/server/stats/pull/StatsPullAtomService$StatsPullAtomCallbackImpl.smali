.class Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_36

    :try_start_1
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_36

    :try_start_4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_36

    :try_start_7
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_36

    :try_start_a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_36

    :try_start_d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v3

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_36

    :try_start_10
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshotLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_5
    move-exception v3

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v3

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_36

    :try_start_13
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_6
    move-exception v3

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    throw v3

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_36

    :try_start_16
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_7
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v3

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_36

    :try_start_19
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_8
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    throw v3

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_36

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_9
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    throw v3

    :pswitch_b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_36

    :try_start_1f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_a
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :try_start_21
    throw v3

    :pswitch_c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_36

    :try_start_22
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_b
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :try_start_24
    throw v3

    :pswitch_d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_36

    :try_start_25
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_c
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    :try_start_27
    throw v3

    :pswitch_e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_36

    :try_start_28
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_d
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :try_start_2a
    throw v3

    :pswitch_f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_36

    :try_start_2b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_e
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    :try_start_2d
    throw v3

    :pswitch_10
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_36

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_f
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    :try_start_30
    throw v3

    :pswitch_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_36

    :try_start_31
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x4

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_10

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_10
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    :try_start_33
    throw v3

    :pswitch_12
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_36

    :try_start_34
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_11
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_11

    :try_start_36
    throw v3

    :pswitch_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    :try_start_37
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_12
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_12

    :try_start_39
    throw v3

    :pswitch_14
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_36

    :try_start_3a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_13
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_13

    :try_start_3c
    throw v3

    :pswitch_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_36

    :try_start_3d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_14
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_14

    :try_start_3f
    throw v3

    :pswitch_16
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_36

    :try_start_40
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameOtherLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_15
    move-exception v3

    :try_start_41
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_15

    :try_start_42
    throw v3

    :pswitch_17
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_36

    :try_start_43
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_16

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_16
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_16

    :try_start_45
    throw v3

    :pswitch_18
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_36

    :try_start_46
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_17

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_17
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_17

    :try_start_48
    throw v3

    :pswitch_19
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_36

    :try_start_49
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_18
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_18

    :try_start_4b
    throw v3

    :pswitch_1a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_36

    :try_start_4c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_19
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_19

    :try_start_4e
    throw v3

    :pswitch_1b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_36

    :try_start_4f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1a
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1a

    :try_start_51
    throw v3

    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_36

    :try_start_52
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1b

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1b
    move-exception v3

    :try_start_53
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1b

    :try_start_54
    throw v3

    :pswitch_1d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_36

    :try_start_55
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1c
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1c

    :try_start_57
    throw v3

    :pswitch_1e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_36

    :try_start_58
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1d
    move-exception v3

    :try_start_59
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1d

    :try_start_5a
    throw v3

    :pswitch_1f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_36

    :try_start_5b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/16 v4, 0xf

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1e
    move-exception v3

    :try_start_5c
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1e

    :try_start_5d
    throw v3

    :pswitch_20
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_36

    :try_start_5e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1f

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1f
    move-exception v3

    :try_start_5f
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1f

    :try_start_60
    throw v3

    :pswitch_21
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_36

    :try_start_61
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_20
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_20

    :try_start_63
    throw v3

    :pswitch_22
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_36

    :try_start_64
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_21

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_21
    move-exception v3

    :try_start_65
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_21

    :try_start_66
    throw v3

    :pswitch_23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_36

    :try_start_67
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_22
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_22

    :try_start_69
    throw v3

    :pswitch_24
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_36

    :try_start_6a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_23

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_23
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_23

    :try_start_6c
    throw v3

    :pswitch_25
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_36

    :try_start_6d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_24

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_24
    move-exception v3

    :try_start_6e
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_24

    :try_start_6f
    throw v3

    :pswitch_26
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_36

    :try_start_70
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_25

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_25
    move-exception v3

    :try_start_71
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_25

    :try_start_72
    throw v3

    :pswitch_27
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_36

    :try_start_73
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_26

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_26
    move-exception v3

    :try_start_74
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_26

    :try_start_75
    throw v3

    :pswitch_28
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_36

    :try_start_76
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_27

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_27
    move-exception v3

    :try_start_77
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_27

    :try_start_78
    throw v3

    :pswitch_29
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_36

    :try_start_79
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_28

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_28
    move-exception v3

    :try_start_7a
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_28

    :try_start_7b
    throw v3

    :pswitch_2a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_36

    :try_start_7c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_29

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_29
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_29

    :try_start_7e
    throw v3

    :pswitch_2b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_36

    :try_start_7f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2a
    move-exception v3

    :try_start_80
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_2a

    :try_start_81
    throw v3

    :pswitch_2c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_36

    :try_start_82
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_2b

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2b
    move-exception v3

    :try_start_83
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_2b

    :try_start_84
    throw v3

    :pswitch_2d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_36

    :try_start_85
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2c

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2c
    move-exception v3

    :try_start_86
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2c

    :try_start_87
    throw v3

    :pswitch_2e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_36

    :try_start_88
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_2d

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2d
    move-exception v3

    :try_start_89
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_2d

    :try_start_8a
    throw v3

    :pswitch_2f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_36

    :try_start_8b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2e

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2e
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_2e

    :try_start_8d
    throw v3

    :pswitch_30
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_36

    :try_start_8e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2f

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2f
    move-exception v3

    :try_start_8f
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_2f

    :try_start_90
    throw v3

    :pswitch_31
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_36

    :try_start_91
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_30

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_30
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_30

    :try_start_93
    throw v3

    :pswitch_32
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_36

    :try_start_94
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_31

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_31
    move-exception v3

    :try_start_95
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_31

    :try_start_96
    throw v3

    :pswitch_33
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_36

    :try_start_97
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_32

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_32
    move-exception v3

    :try_start_98
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_32

    :try_start_99
    throw v3

    :pswitch_34
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_36

    :try_start_9a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_33

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_33
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_33

    :try_start_9c
    throw v3

    :pswitch_35
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_36

    :try_start_9d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_34

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_34
    move-exception v3

    :try_start_9e
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_34

    :try_start_9f
    throw v3

    :pswitch_36
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_36

    :try_start_a0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$100(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_35

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_35
    move-exception v3

    :try_start_a1
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_35

    :try_start_a2
    throw v3

    :catchall_36
    move-exception v2

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_36

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_28
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_28
        :pswitch_14
        :pswitch_28
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_f
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method
