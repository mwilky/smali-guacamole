.class public Lcom/oneplus/android/server/cno/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/power/IStandbyDetect;


# static fields
.field private static final sis:Ljava/lang/String; = "StandbyDetect"

.field private static tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field private static final you:Z


# instance fields
.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/cno/zta;->you:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/cno/zta;->zta:Z

    return-void
.end method


# virtual methods
.method public checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public enteringDeepIdleLocked()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W()V

    :cond_0
    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-boolean p0, p0, Lcom/oneplus/android/server/cno/zta;->zta:Z

    invoke-direct {v0, p1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    return-void
.end method

.method public leavingDeepIdleLocked(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y0(Z)V

    :cond_0
    return-void
.end method

.method public notePackageInstalled(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyEnterDeepIdle()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c1()V

    :cond_0
    return-void
.end method

.method public resetTimeofDeepIdleStart()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g1()V

    :cond_0
    return-void
.end method

.method public setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j1(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method

.method public shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k1(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public update1stLightIdleStatus(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s1(Z)V

    :cond_0
    return-void
.end method

.method public updateDeepSleepStatus(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t1(Z)V

    :cond_0
    return-void
.end method

.method public updateScreenState(I)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v1(I)V

    :cond_0
    return-void
.end method

.method public updateScreenStatus(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/cno/zta;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w1(Z)V

    :cond_0
    return-void
.end method
