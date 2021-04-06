.class Lcom/android/server/am/h$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/OPSystemCpuLoadMonitor$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/h;


# direct methods
.method private constructor <init>(Lcom/android/server/am/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/h$tsu;->zta:Lcom/android/server/am/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/h;Lcom/android/server/am/h$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/h$tsu;-><init>(Lcom/android/server/am/h;)V

    return-void
.end method


# virtual methods
.method public zta(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteSystemLoadChanged loadType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSystemStateMonitor"

    invoke-static {v0, p0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->cno()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->ibl(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V

    return-void
.end method
