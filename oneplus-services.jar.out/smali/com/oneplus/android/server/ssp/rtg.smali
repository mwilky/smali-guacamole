.class public Lcom/oneplus/android/server/ssp/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/location/IOpLocationManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/ssp/rtg$zta;
    }
.end annotation


# static fields
.field private static final sis:Ljava/lang/String; = "OpLocMngrSrv"


# instance fields
.field private you:Lcom/oneplus/android/server/ssp/rtg$zta;

.field private zta:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg;->zta:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getLogLevelStatusUpdates()Z
    .locals 2

    const-string p0, "persist.sys.assert.panic"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "persist.vendor.oem.gps.debug"

    const-string v1, "0"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg;->zta:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/ssp/rtg$zta;-><init>(Lcom/oneplus/android/server/ssp/rtg;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg;->you:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {}, Lcom/oneplus/android/server/ssp/tsu;->zta()V

    return-void
.end method

.method public isDisableMOLR()Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/ssp/tsu;->sis()Z

    move-result p0

    return p0
.end method

.method public listenEmergencyCallStatus()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg;->you:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->ear()V

    return-void
.end method
