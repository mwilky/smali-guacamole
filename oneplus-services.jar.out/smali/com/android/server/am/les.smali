.class public Lcom/android/server/am/les;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpBGFrozen;


# static fields
.field private static final sis:Z

.field private static final tsu:Ljava/lang/String; = "OpBGFrozen"


# instance fields
.field private you:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/les;->sis:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    return-void
.end method


# virtual methods
.method public addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(IILandroid/hardware/display/IDisplayManagerCallback;)V

    return-void
.end method

.method public addProc(IILcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0(IILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-void
.end method

.method public broadcastTimeoutEvent(IILandroid/content/Intent;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->R0(IILandroid/content/Intent;)V

    return-void
.end method

.method public bumpServiceEvent(IIZLjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->S0(IIZLjava/lang/String;)V

    return-void
.end method

.method public checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ire$sis;->zta(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ire$zta;->zta(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ire$sis;->you(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public checkTimeoutBegin(III)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U0(III)V

    return-void
.end method

.method public checkTimeoutEnd(I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V0(I)V

    return-void
.end method

.method public clearImportantUids()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W0()V

    return-void
.end method

.method public clientConnectionRemoveEvent(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y0(II)V

    return-void
.end method

.method public contentNotifyResumeEvent(IZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e1(IZ)V

    return-void
.end method

.method public getEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->v1()Z

    move-result p0

    return p0
.end method

.method public getTimeoutValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    const-wide/16 p0, 0x258

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n2(IZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 0

    const-string p2, "OpBGFrozen"

    const-string p3, "===initInstance=== Start"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/oneplus/server/tsu;->wtn(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/les;->zta:Z

    const-string p0, "===initInstance=== End"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDeliverDisplayChange(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ire$you;->you(I)Z

    move-result p0

    return p0
.end method

.method public isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I2(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSpecialJob(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUidFrozen(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->M2(I)Z

    move-result p0

    return p0
.end method

.method public isUidImperceptible(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N2(I)Z

    move-result p0

    return p0
.end method

.method public mediaProjectionEvent(IZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f3(IZ)V

    return-void
.end method

.method public permRequestDecEvent(I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j3(I)V

    return-void
.end method

.method public receiveBroadcastEvent(IIZZLandroid/content/Intent;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l3(IIZZLandroid/content/Intent;)V

    return-void
.end method

.method public removeDisplayCallback(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o3(II)V

    return-void
.end method

.method public removeProc(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q3(II)V

    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$zta;->igw(Z)V

    return-void
.end method

.method public serviceTimeoutEvent(IILjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q3(IILjava/lang/String;)V

    return-void
.end method

.method public shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    iget-boolean p2, p0, Lcom/android/server/am/les;->zta:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string p2, "OPBF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0, p4, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j1(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Z3(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public triggerForKernel(IIILjava/lang/String;I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h4(IIILjava/lang/String;I)V

    return-void
.end method

.method public triggerResume(ILjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i4(ILjava/lang/String;)V

    return-void
.end method

.method public updateDisplayEvent(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k4(II)V

    return-void
.end method

.method public updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m4(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n4(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateLastImportantUidsIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/les;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o4()V

    return-void
.end method

.method public virtualDeviceChangeEvent(IZLjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/les;->zta:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t4(IZLjava/lang/String;)V

    return-void
.end method
