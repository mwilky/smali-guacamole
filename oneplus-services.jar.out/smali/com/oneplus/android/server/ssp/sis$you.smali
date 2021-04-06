.class Lcom/oneplus/android/server/ssp/sis$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field private static final cno:I = 0x2ee0

.field private static final kth:D = 5000.0


# instance fields
.field private final rtg:Ljava/lang/Object;

.field private sis:Landroid/os/Handler;

.field final synthetic ssp:Lcom/oneplus/android/server/ssp/sis;

.field private tsu:I

.field private you:Landroid/location/Location;

.field private zta:Landroid/location/Location;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/ssp/sis;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->ssp:Lcom/oneplus/android/server/ssp/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->you:Landroid/location/Location;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->sis:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->tsu:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->rtg:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/ssp/sis;Lcom/oneplus/android/server/ssp/sis$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/ssp/sis$you;-><init>(Lcom/oneplus/android/server/ssp/sis;)V

    return-void
.end method

.method private cno(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->you:Landroid/location/Location;

    return-void
.end method

.method private ssp(Landroid/location/Location;)V
    .locals 3

    iget v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->tsu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->tsu:I

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->you:Landroid/location/Location;

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/sis$you;->sis:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/android/server/ssp/zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/ssp/zta;-><init>(Lcom/oneplus/android/server/ssp/sis$you;)V

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic you()V
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->tsu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->tsu:I

    if-gtz v0, :cond_0

    const-string v0, "OpGnssLocPro"

    const-string v1, "reset fl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method private zta()Landroid/location/Location;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    const/4 v1, 0x0

    const-string v2, "OpGnssLocPro"

    if-nez v0, :cond_0

    const-string p0, "fl is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->you:Landroid/location/Location;

    if-nez v0, :cond_1

    const-string p0, "ll is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v3, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-double v0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time_diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x41f2a05f20000000L    # 5.0E9

    cmpg-double v0, v0, v3

    if-gez v0, :cond_2

    const-string v0, "use fl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis$you;->zta:Landroid/location/Location;

    return-object p0

    :cond_2
    const-string v0, "use ll"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis$you;->you:Landroid/location/Location;

    return-object p0
.end method


# virtual methods
.method public rtg(Landroid/location/Location;)Landroid/location/Location;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->rtg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/ssp/sis$you;->cno(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/sis$you;->zta()Landroid/location/Location;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic sis()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/sis$you;->you()V

    return-void
.end method

.method public tsu(Landroid/location/Location;)Landroid/location/Location;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/ssp/sis$you;->rtg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/ssp/sis$you;->ssp(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/sis$you;->zta()Landroid/location/Location;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
