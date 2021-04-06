.class Lcom/android/server/am/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/h$sis;,
        Lcom/android/server/am/h$tsu;,
        Lcom/android/server/am/h$you;,
        Lcom/android/server/am/h$rtg;
    }
.end annotation


# static fields
.field private static final rtg:Ljava/lang/String; = "OpSystemStateMonitor"

.field private static ssp:Lcom/android/server/am/h;


# instance fields
.field private sis:Lcom/android/server/am/h$sis;

.field private tsu:Lcom/android/server/am/h$rtg;

.field private you:Lcom/android/server/am/h$tsu;

.field private zta:Lcom/android/server/am/h$you;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/h$you;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/h$you;-><init>(Lcom/android/server/am/h;Lcom/android/server/am/h$zta;)V

    iput-object v0, p0, Lcom/android/server/am/h;->zta:Lcom/android/server/am/h$you;

    new-instance v0, Lcom/android/server/am/h$tsu;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/h$tsu;-><init>(Lcom/android/server/am/h;Lcom/android/server/am/h$zta;)V

    iput-object v0, p0, Lcom/android/server/am/h;->you:Lcom/android/server/am/h$tsu;

    new-instance v0, Lcom/android/server/am/h$sis;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/h$sis;-><init>(Lcom/android/server/am/h;Lcom/android/server/am/h$zta;)V

    iput-object v0, p0, Lcom/android/server/am/h;->sis:Lcom/android/server/am/h$sis;

    new-instance v0, Lcom/android/server/am/h$rtg;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/h$rtg;-><init>(Lcom/android/server/am/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/h;->tsu:Lcom/android/server/am/h$rtg;

    return-void
.end method

.method public static zta()Lcom/android/server/am/h;
    .locals 1

    sget-object v0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/h;

    invoke-direct {v0}, Lcom/android/server/am/h;-><init>()V

    sput-object v0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    :cond_0
    sget-object v0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    return-object v0
.end method


# virtual methods
.method you()V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/h;->zta:Lcom/android/server/am/h$you;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/ibl;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/h;->zta:Lcom/android/server/am/h$you;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/ibl;)V

    invoke-static {}, Lcom/android/server/am/cjf;->zgw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu()Lcom/android/server/am/OPSystemCpuLoadMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/h;->you:Lcom/android/server/am/h$tsu;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth(Lcom/android/server/am/OPSystemCpuLoadMonitor$you;)V

    invoke-static {}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu()Lcom/android/server/am/OPBRPorcessSpeedMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/h;->sis:Lcom/android/server/am/h$sis;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->kth(Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;)V

    :cond_0
    return-void
.end method
