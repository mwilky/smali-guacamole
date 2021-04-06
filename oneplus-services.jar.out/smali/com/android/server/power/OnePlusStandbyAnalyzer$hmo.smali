.class public final Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "hmo"
.end annotation


# instance fields
.field final synthetic bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field private cno:F

.field private kth:J

.field private rtg:I

.field private sis:I

.field private ssp:F

.field private tsu:I

.field private you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field private zta:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IIIFFJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->sis:I

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->tsu:I

    iput p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg:I

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->ssp:F

    iput p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->cno:F

    iput-wide p8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->kth:J

    invoke-static {p1, p10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v8

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->flushExternal()V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v10, -0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v2, v7

    invoke-virtual {v6, v2, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v11, v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    mul-long/2addr v7, v4

    iget-object v12, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v11, v6, v7, v8, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;

    move-result-object v7

    move-object v8, v10

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time on battery of uptime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->updateKernelWakelocks()V

    :goto_2
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const/16 v10, 0x1f4

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eq v6, v12, :cond_b

    const/4 v12, 0x2

    if-eq v6, v12, :cond_4

    if-eq v6, v11, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needGenBatteryOutlier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] Calculate & Judge in "

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    const-string v6, "OPSA"

    const-string v11, "======END======"

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v4, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    iput-wide v2, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NoSignal] mRawNoSignalOfEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "[NoSignal] Keep starting"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_5
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeepSleep] mDeepSleepOfEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "[DeepSleep] Keep starting"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_6
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->sis:I

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->tsu:I

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->veq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg:I

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->ssp:F

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vju(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->cno:F

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->kth:J

    invoke-static {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-object v8, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Ljava/util/List;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_7

    const-string v3, "End"

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-object v7, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    const-string v4, "End-WL"

    invoke-static {v2, v4, v3, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    const-string v4, "End"

    invoke-virtual {v2, v4, v3, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    invoke-static {v3, v4}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    const-string v4, "End"

    invoke-static {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f2:Ljava/lang/String;

    const-string v4, "End"

    invoke-static {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:Ljava/lang/String;

    const-string v4, "End"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    const-string v3, "End"

    invoke-static {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] SnapShot in "

    goto/16 :goto_3

    :cond_b
    const-string v6, "OPSA"

    const-string v13, "======START======"

    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v10

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v4, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    iput-wide v2, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:J

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NoSignal] mRawNoSignalOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "[NoSignal] Keep starting"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_c
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AOD] mAODOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)I

    move-result v2

    if-ne v2, v11, :cond_d

    const-string v2, "[AOD] Keep starting"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_d
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeepSleep] mDeepSleepOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "[DeepSleep] Keep starting"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_e
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-object v8, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Ljava/util/List;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_f

    const-string v3, "Start"

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_f
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-object v7, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_10

    iget-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    const-string v4, "Start-WL"

    invoke-static {v2, v4, v3, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    const-string v4, "Start"

    invoke-virtual {v2, v4, v3, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_10
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    invoke-static {v3, v4}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    const-string v4, "Start"

    invoke-static {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f2:Ljava/lang/String;

    const-string v4, "Start"

    invoke-static {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:Ljava/lang/String;

    const-string v4, "Start"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v2, :cond_12

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    const-string v3, "Start"

    invoke-static {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[START] SnapShot in "

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_13
    const-string p0, "mBatteryStatsService == null"

    :goto_4
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1(Ljava/lang/String;)V

    :goto_5
    return-void
.end method
