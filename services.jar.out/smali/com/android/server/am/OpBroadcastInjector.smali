.class Lcom/android/server/am/OpBroadcastInjector;
.super Ljava/lang/Object;
.source "OpBroadcastInjector.java"


# static fields
.field public static final SCENE_OF_RECEVIER_TOOK_TIME:I = 0x1

.field public static final SCENE_OF_TIME_TO_RECEVIER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpBroadcastInjector"

.field private static sIBroadcast:Lcom/android/server/am/IBroadcast;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V

    :cond_0
    return-void
.end method

.method public static adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public static enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V

    :cond_0
    return-void
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->init()V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->init(Lcom/android/server/am/ActivityManagerService;)V

    :cond_0
    return-void
.end method

.method public static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vip_broadcast:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBroadcast;

    sput-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    :cond_0
    return-void
.end method

.method public static isEnableDelayStrategy()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->isEnableDelayStrategy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableFeature()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->isEnableFeature()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    return-void
.end method

.method public static processParallelBroadcastLocked()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->processParallelBroadcastLocked()V

    :cond_0
    return-void
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IBroadcast;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IBroadcast;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static speedMonitor(ZI)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->speedMonitor(ZI)V

    :cond_0
    return-void
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->systemReady(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static updateAnrCount()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->updateAnrCount()V

    :cond_0
    return-void
.end method

.method public static updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
    .locals 10

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/am/IBroadcast;->updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static updateReceiverCount()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->updateReceiverCount()V

    :cond_0
    return-void
.end method
