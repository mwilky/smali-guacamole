.class public Lcom/android/server/am/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IBroadcast;


# static fields
.field static you:Lcom/android/server/ServiceThread; = null

.field private static final zta:Ljava/lang/String; = "OPBroadcast"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "adjustIfAppNotExist"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-adjustIfAppNotExist"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->zta(Lcom/android/server/am/BroadcastRecord;)V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "adjustReceiverListForSMS"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-adjustReceiverListForSMS"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/oxb;->you(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-object p0
.end method

.method public dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "dumpsys"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/oxb;->rtg(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enqueueBroadcastLocked isOrder = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " r = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPBroadcast"

    invoke-static {v0, p0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-enqueueBroadcastLocked"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/oxb;->ssp(ZLcom/android/server/am/BroadcastRecord;)V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public init()V
    .locals 3

    const-string p0, "OPBroadcast"

    const-string v0, "OPBroadcast init"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/zgw;->you:Lcom/android/server/ServiceThread;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/server/ServiceThread;

    const/16 v0, 0xa

    const/4 v1, 0x0

    const-string v2, "OP-BroadcastHandler"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p0, Lcom/android/server/am/zgw;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    invoke-static {}, Lcom/android/server/am/cjf;->zgw()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu()Lcom/android/server/am/OPSystemCpuLoadMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->init()V

    :cond_1
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "OPBroadcast init for OPIntelligentBroadcastManager"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->bio(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public isEnableDelayStrategy()Z
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "isEnableDelayStrategy"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cjf;->zgw()Z

    move-result p0

    return p0
.end method

.method public isEnableFeature()Z
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "isEnableFeature"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cjf;->obl()Z

    move-result p0

    return p0
.end method

.method public processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "processOrderedBroadcastLockedForTop"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-processOrderedBroadcastLockedForTop"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/oxb;->gwm(Lcom/android/server/am/BroadcastRecord;I)V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public processParallelBroadcastLocked()V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "processParallelBroadcastLocked"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-enqueueBroadcastLocked"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/oxb;->ugm()V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "skipBroadcastLocked2"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-skipBroadcastLocked2"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/server/am/oxb;->zgw(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return p0
.end method

.method public skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "skipBroadcastLocked1"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-skipBroadcastLocked1"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/server/am/oxb;->obl(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return p0
.end method

.method public speedMonitor(ZI)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/cjf;->zgw()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OPBroadcast"

    const-string v0, "speedMonitor"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu()Lcom/android/server/am/OPBRPorcessSpeedMonitor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->speedMonitor(ZI)V

    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "systemReady"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->oxb(Landroid/content/Context;)V

    return-void
.end method

.method public updateAnrCount()V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "updateAnrCount"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/obl;->igw()Lcom/android/server/am/obl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/obl;->obl()V

    return-void
.end method

.method public updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
    .locals 11

    const-string v0, "OPBroadcast"

    const-string v1, "updateRcvInfo"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "op-updateRcvInfo"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/obl;->igw()Lcom/android/server/am/obl;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/obl;->oxb(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public updateReceiverCount()V
    .locals 1

    const-string p0, "OPBroadcast"

    const-string v0, "updateReceiverCount"

    invoke-static {p0, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "op-updateReceiverCount"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/obl;->igw()Lcom/android/server/am/obl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/obl;->cjf()V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method