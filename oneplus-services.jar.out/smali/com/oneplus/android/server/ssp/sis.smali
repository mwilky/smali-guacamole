.class public Lcom/oneplus/android/server/ssp/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/location/IOpGnssLocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/ssp/sis$sis;,
        Lcom/oneplus/android/server/ssp/sis$you;,
        Lcom/oneplus/android/server/ssp/sis$tsu;
    }
.end annotation


# static fields
.field private static final rtg:Ljava/lang/String; = "OpGnssLocPro"


# instance fields
.field private sis:Lcom/oneplus/android/server/ssp/sis$you;

.field private tsu:Lcom/oneplus/android/server/ssp/sis$sis;

.field private you:Lcom/oneplus/android/server/ssp/sis$tsu;

.field private zta:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForceMSA()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->you:Lcom/oneplus/android/server/ssp/sis$tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/sis$tsu;->you()Z

    move-result p0

    return p0
.end method

.method public getGnssHalDbgLevel(Z)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->tsu:Lcom/oneplus/android/server/ssp/sis$sis;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/ssp/sis$sis;->zta(Z)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHandledFusedLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->sis:Lcom/oneplus/android/server/ssp/sis$you;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/ssp/sis$you;->tsu(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public getHandledNetworkLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->sis:Lcom/oneplus/android/server/ssp/sis$you;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/ssp/sis$you;->rtg(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

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

.method public handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->you:Lcom/oneplus/android/server/ssp/sis$tsu;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/android/server/ssp/sis$tsu;->zta(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis;->zta:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/android/server/ssp/sis$tsu;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/ssp/sis$tsu;-><init>(Lcom/oneplus/android/server/ssp/sis;Lcom/oneplus/android/server/ssp/sis$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis;->you:Lcom/oneplus/android/server/ssp/sis$tsu;

    new-instance p1, Lcom/oneplus/android/server/ssp/sis$you;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/ssp/sis$you;-><init>(Lcom/oneplus/android/server/ssp/sis;Lcom/oneplus/android/server/ssp/sis$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis;->sis:Lcom/oneplus/android/server/ssp/sis$you;

    new-instance p1, Lcom/oneplus/android/server/ssp/sis$sis;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/ssp/sis$sis;-><init>(Lcom/oneplus/android/server/ssp/sis;Lcom/oneplus/android/server/ssp/sis$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis;->tsu:Lcom/oneplus/android/server/ssp/sis$sis;

    return-void
.end method

.method public isDisableDeviceIdle()Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/ssp/tsu;->you()Z

    move-result p0

    return p0
.end method

.method public resetForceMSA()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->you:Lcom/oneplus/android/server/ssp/sis$tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/sis$tsu;->sis()V

    return-void
.end method

.method public setLogUpate()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/sis;->tsu:Lcom/oneplus/android/server/ssp/sis$sis;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/sis$sis;->you()V

    :cond_0
    return-void
.end method
