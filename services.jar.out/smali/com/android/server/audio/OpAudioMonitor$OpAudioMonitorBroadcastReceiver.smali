.class Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpAudioMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/OpAudioMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpAudioMonitorBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/OpAudioMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/OpAudioMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/OpAudioMonitor;Lcom/android/server/audio/OpAudioMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/OpAudioMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpAudioMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    const-string v6, " lapse:"

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_3

    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$402(Lcom/android/server/audio/OpAudioMonitor;I)I

    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/audio/OpAudioMonitor;->access$502(Lcom/android/server/audio/OpAudioMonitor;J)J

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v7

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$500(Lcom/android/server/audio/OpAudioMonitor;)J

    move-result-wide v7

    sub-long v7, v9, v7

    const-wide/16 v11, 0x3c

    cmp-long v5, v7, v11

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v5

    if-eq v5, v3, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v11}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/audio/OpAudioMonitor;->access$600(Lcom/android/server/audio/OpAudioMonitor;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "switch_status"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "use_time"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "appid"

    const-string v13, "RBS8PPYT2W"

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const-string v13, "alert_slider"

    invoke-virtual {v12, v13, v5, v11}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v13}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v9, v10}, Lcom/android/server/audio/OpAudioMonitor;->access$502(Lcom/android/server/audio/OpAudioMonitor;J)J

    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$402(Lcom/android/server/audio/OpAudioMonitor;I)I

    :goto_0
    move-object/from16 v16, v2

    goto/16 :goto_b

    :cond_3
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "MDM,device:2 lapse:"

    const-string v10, "MDM,music is not active, clear"

    const/4 v11, 0x3

    const-string v5, " endTime:"

    const/4 v12, 0x0

    const-string v13, " packageName:"

    if-eqz v3, :cond_f

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " hsState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v14, v11, v12}, Lcom/android/server/audio/OpAudioMonitor;->access$700(Lcom/android/server/audio/OpAudioMonitor;II)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v4, v4, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_4
    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v11, v11, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v11, v11, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v7

    sub-long v7, v14, v11

    move/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v6

    const-string v6, "MDM,in startTime:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v19, 0x5

    cmp-long v3, v7, v19

    if-lez v3, :cond_5

    const-wide/32 v17, 0x15180

    cmp-long v3, v7, v17

    if-gez v3, :cond_5

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x2

    move-object/from16 v21, v3

    move-wide/from16 v22, v11

    move-wide/from16 v24, v14

    move-wide/from16 v26, v7

    move-object/from16 v29, v10

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM,ignore: speaker lapse:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move/from16 v16, v3

    move-object/from16 v30, v6

    :goto_2
    move/from16 v3, v16

    move-object/from16 v6, v30

    const-wide/16 v7, 0x3e8

    goto/16 :goto_1

    :cond_7
    move/from16 v16, v3

    goto/16 :goto_6

    :cond_8
    move/from16 v16, v3

    goto/16 :goto_6

    :cond_9
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_e

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v8, v8, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v8, v8, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v21, 0x3e8

    div-long v14, v14, v21

    sub-long v10, v14, v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v3

    const-string v3, "MDM,out startTime:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "portName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "microphone"

    move-object/from16 v32, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x2

    move-object/from16 v33, v3

    const-string v3, "USB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x4000000

    move/from16 v30, v3

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x1

    if-ne v12, v3, :cond_b

    const/16 v21, 0x4

    move/from16 v30, v21

    goto :goto_4

    :cond_b
    const/16 v21, 0x8

    move/from16 v30, v21

    :goto_4
    const-wide/16 v19, 0x5

    cmp-long v21, v10, v19

    if-lez v21, :cond_c

    const-wide/32 v17, 0x15180

    cmp-long v21, v10, v17

    if-gez v21, :cond_c

    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    move/from16 v28, v30

    move-object/from16 v29, v7

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "MDM,device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    move-object/from16 v21, v5

    move/from16 v5, v30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v8

    const-string v8, "MDM,ignore: device:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    move-object/from16 v31, v3

    move-object/from16 v32, v5

    :goto_5
    move-object/from16 v3, v31

    move-object/from16 v5, v32

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_e
    :goto_6
    move-object/from16 v16, v2

    goto/16 :goto_b

    :cond_f
    move-object/from16 v32, v5

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a2dpState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v6, v11, v5}, Lcom/android/server/audio/OpAudioMonitor;->access$700(Lcom/android/server/audio/OpAudioMonitor;II)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v4, v4, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_10
    const/4 v5, 0x2

    if-ne v3, v5, :cond_15

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v5, v5, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_14

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v5, v5, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v7, v7, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v7, v7, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v14, 0x3e8

    div-long/2addr v10, v14

    sub-long v14, v10, v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,a2dp connected, startTime:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v12, v12, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    move-object/from16 v16, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v19, 0x5

    cmp-long v2, v14, v19

    if-lez v2, :cond_11

    const-wide/32 v17, 0x15180

    cmp-long v2, v14, v17

    if-gez v2, :cond_11

    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x2

    move-object/from16 v21, v2

    move-wide/from16 v22, v7

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    move-object/from16 v29, v6

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MDM,ignore: speaker, lapse:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    move-object/from16 v16, v2

    move-object/from16 v1, v32

    :goto_8
    move-object/from16 v32, v1

    move-object/from16 v2, v16

    move-object/from16 v1, p2

    goto/16 :goto_7

    :cond_13
    move-object/from16 v16, v2

    goto/16 :goto_b

    :cond_14
    move-object/from16 v16, v2

    goto/16 :goto_b

    :cond_15
    move-object/from16 v16, v2

    move-object/from16 v1, v32

    if-nez v3, :cond_1a

    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long v14, v8, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM,a2dp disconnected, startTime:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v10, v10, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x5

    cmp-long v12, v14, v10

    if-lez v12, :cond_16

    const-wide/32 v17, 0x15180

    cmp-long v12, v14, v17

    if-gez v12, :cond_17

    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x80

    move-object/from16 v21, v12

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v14

    move-object/from16 v29, v5

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM,device:128 lapse:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    const-wide/32 v17, 0x15180

    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM,ignore: a2dp, lapse:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_18
    const-wide/32 v17, 0x15180

    :goto_a
    goto/16 :goto_9

    :cond_19
    move-object/from16 v16, v2

    :cond_1a
    :goto_b
    return-void
.end method
