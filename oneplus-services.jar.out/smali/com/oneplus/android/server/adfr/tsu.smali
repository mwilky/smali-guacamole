.class public Lcom/oneplus/android/server/adfr/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/adfr/tsu$sis;,
        Lcom/oneplus/android/server/adfr/tsu$you;
    }
.end annotation


# static fields
.field private static final cgv:I = 0xa

.field private static final cjf:I = 0x0

.field private static final ear:I = 0x1

.field private static final fto:I = 0x10

.field private static final hmo:I = 0x3

.field private static final ire:I = 0x2

.field private static final lqr:I = 0x5

.field private static final obl:Ljava/lang/String; = "SurfaceFlinger"

.field private static final oxb:I = 0x59dc

.field static final vdb:Ljava/lang/String; = "OPlusQSyncController"

.field private static final veq:I = 0x5a

.field private static final vju:F = 0.015f

.field static final zgw:Z = true


# instance fields
.field private final bio:Lcom/oneplus/android/server/adfr/sis;

.field private bvj:Landroid/view/Choreographer;

.field private final cno:Ljava/lang/Object;

.field private dma:F

.field private gck:I

.field private gwm:Landroid/hardware/display/DisplayManagerInternal;

.field private ibl:Landroid/view/Choreographer$FrameCallback;

.field private igw:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

.field private final kth:Lcom/oneplus/android/server/adfr/tsu$sis;

.field private oif:Landroid/os/IBinder;

.field private qbh:Z

.field private rtg:Z

.field private sis:F

.field private final ssp:Landroid/content/Context;

.field private tsu:Z

.field private ugm:Lcom/oneplus/android/server/adfr/tsu$you;

.field private wtn:I

.field private you:F

.field private ywr:Z

.field private zta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/oneplus/android/server/adfr/tsu;->zta:J

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/android/server/adfr/tsu;->you:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/oneplus/android/server/adfr/tsu;->sis:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/tsu;->tsu:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/tsu;->rtg:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->oif:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->ssp:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    new-instance v0, Lcom/oneplus/android/server/adfr/tsu$sis;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/adfr/tsu$sis;-><init>(Lcom/oneplus/android/server/adfr/tsu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    new-instance v0, Lcom/oneplus/android/server/adfr/sis;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/adfr/sis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    return-void
.end method

.method private cno()V
    .locals 2

    const-string v0, "OPlusQSyncController"

    const-string v1, "cancelSampling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->ywr:Z

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->bvj:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu;->ibl:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic dma()V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->bvj:Landroid/view/Choreographer;

    return-void
.end method

.method private gck(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method private ibl()V
    .locals 2

    const-string v0, "OPlusQSyncController"

    const-string v1, "scheduleSampling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->ywr:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->ssp:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/adfr/tsu;->gck(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->qbh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->tsu:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/adfr/sis;->cno()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/adfr/sis;->sis()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->ywr:Z

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->bvj:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu;->ibl:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private igw(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/16 p1, 0x3c

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/android/server/adfr/tsu;->gck:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lcom/oneplus/android/server/adfr/tsu;->gck:I

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->ugm(I)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->ibl()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private kth(J)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {p1}, Lcom/oneplus/android/server/adfr/sis;->rtg()[J

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->ssp([J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/oneplus/android/server/adfr/tsu;->wtn:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/oneplus/android/server/adfr/tsu;->wtn:I

    iget-object v2, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    iget-wide v2, p0, Lcom/oneplus/android/server/adfr/tsu;->zta:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p1, :cond_2

    const-string p0, "OPlusQSyncController"

    const-string v0, " histogram list:"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    array-length v0, p1

    if-ge p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, p1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusQSyncController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " shouldAdjustQsync: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPlusQSyncController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic qbh(J)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->ywr:Z

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/adfr/tsu;->kth(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/adfr/tsu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->wtn(I)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/adfr/tsu;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->ibl()V

    return-void
.end method

.method private ssp([J)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_3

    aget-wide v10, p1, v3

    add-long/2addr v4, v10

    const/4 v10, 0x5

    if-ge v3, v10, :cond_1

    aget-wide v10, p1, v3

    add-long/2addr v6, v10

    :cond_1
    aget-wide v10, p1, v3

    cmp-long v10, v10, v8

    if-lez v10, :cond_2

    aget-wide v8, p1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " totalSum: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lowBrightnessSum: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " maxGrayCount: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "OPlusQSyncController"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v4, v1

    if-eqz p1, :cond_5

    long-to-float v1, v6

    long-to-float v2, v4

    div-float/2addr v1, v2

    iget v10, p0, Lcom/oneplus/android/server/adfr/tsu;->you:F

    cmpl-float v1, v1, v10

    if-gtz v1, :cond_5

    long-to-float v1, v8

    div-float/2addr v1, v2

    iget p0, p0, Lcom/oneplus/android/server/adfr/tsu;->sis:F

    cmpl-float p0, v1, p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " low gray ratio: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, v6

    long-to-float v0, v4

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " max gray ratio: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, v8

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/adfr/tsu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->ugm(I)V

    return-void
.end method

.method private ugm(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/android/server/adfr/tsu;->wtn:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/oneplus/android/server/adfr/tsu;->gck:I

    if-ge p1, v1, :cond_0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->oif:Landroid/os/IBinder;

    if-nez v0, :cond_1

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->oif:Landroid/os/IBinder;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setQSyncMinFps fps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusQSyncController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu;->oif:Landroid/os/IBinder;

    const/16 p1, 0x59dc

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "OPlusQSyncController"

    const-string v1, "Failed to set min fps"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private wtn(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->igw:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/tsu;->igw:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {v1, p1}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/adfr/tsu;->qbh:Z

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/adfr/tsu;->qbh:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->ibl()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->cno()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/adfr/tsu;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->igw(F)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/adfr/tsu;)Lcom/oneplus/android/server/adfr/tsu$sis;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    return-object p0
.end method


# virtual methods
.method public bio(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/adfr/sis;->you(Ljava/io/PrintWriter;)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v0, p2, v1

    const-string v3, "hist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {v0}, Lcom/oneplus/android/server/adfr/sis;->sis()V

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->bio:Lcom/oneplus/android/server/adfr/sis;

    invoke-virtual {v0}, Lcom/oneplus/android/server/adfr/sis;->rtg()[J

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "  Histogram list:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "         "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    aget-object v0, p2, v1

    const-string v3, "sampler_interval"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oneplus/android/server/adfr/tsu;->zta:J

    :cond_1
    aget-object v0, p2, v1

    const-string v3, "low_gray_ratio"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/android/server/adfr/tsu;->you:F

    :cond_2
    aget-object v0, p2, v1

    const-string v3, "max_gray_ratio"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/android/server/adfr/tsu;->sis:F

    :cond_3
    aget-object v0, p2, v1

    const-string v3, "content_sampler_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/tsu;->tsu:Z

    :cond_4
    aget-object v0, p2, v1

    const-string v1, "follow_nits_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/android/server/adfr/tsu;->rtg:Z

    :cond_5
    iget-object p2, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    iget-wide v1, p0, Lcom/oneplus/android/server/adfr/tsu;->zta:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    sampler_interval: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oneplus/android/server/adfr/tsu;->zta:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    low_gray_ratio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/adfr/tsu;->you:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    max_gray_ratio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/adfr/tsu;->sis:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    content_sampler_enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/tsu;->tsu:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    follow_nits_change: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/adfr/tsu;->rtg:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bvj(F)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->qbh:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/tsu;->rtg:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/android/server/adfr/tsu;->dma:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/oneplus/android/server/adfr/tsu;->dma:F

    div-float/2addr v1, v2

    const v2, 0x3c75c28f    # 0.015f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput p1, p0, Lcom/oneplus/android/server/adfr/tsu;->dma:F

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public gwm(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/adfr/tsu;->qbh:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->ibl()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->cno()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic oif(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/adfr/tsu;->qbh(J)V

    return-void
.end method

.method public vdb(Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->igw:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    return-void
.end method

.method public synthetic ywr()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/tsu;->dma()V

    return-void
.end method

.method public zgw(Landroid/content/Context;)V
    .locals 3

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->gwm:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/android/server/adfr/tsu$you;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/adfr/tsu$you;-><init>(Lcom/oneplus/android/server/adfr/tsu;Lcom/oneplus/android/server/adfr/tsu$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->ugm:Lcom/oneplus/android/server/adfr/tsu$you;

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu;->gwm:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayModeSpecsCallback(Landroid/hardware/display/DisplayManagerInternal$DesiredDisplayModeSpecsCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->kth:Lcom/oneplus/android/server/adfr/tsu$sis;

    new-instance v0, Lcom/oneplus/android/server/adfr/you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/adfr/you;-><init>(Lcom/oneplus/android/server/adfr/tsu;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    new-instance p1, Lcom/oneplus/android/server/adfr/zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/adfr/zta;-><init>(Lcom/oneplus/android/server/adfr/tsu;)V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu;->ibl:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method
