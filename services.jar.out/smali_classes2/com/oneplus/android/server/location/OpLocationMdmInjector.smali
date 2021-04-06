.class public Lcom/oneplus/android/server/location/OpLocationMdmInjector;
.super Ljava/lang/Object;
.source "OpLocationMdmInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpLocationMdmInjector"

.field private static mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_mdm:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/location/IOpLocationMdm;

    sput-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    if-nez v0, :cond_1

    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mIOpLocationMdm is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->getInstance(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "getInstance(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getProviderFlag()I
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OpLocationMdmInjector"

    const-string v1, "getProviderFlag(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static mdmAbortReport()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmAbortReport()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmAbortReport(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mdmPrReport()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmPrReport()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmPrReport(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mdmReportLocSwitchData()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmReportLocSwitchData()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmReportLocSwitchData(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mdmRequestTimeCount(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmRequestTimeCount(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmRequestTimeCount(String a,long b), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mdmSaveOnLocationChanged(Ljava/lang/String;J)Z
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmSaveOnLocationChanged(Ljava/lang/String;J)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmSaveOnLocationChanged(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmSaveRequestInfo, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mdmSetLossLevel(J)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmSetLossLevel(J)V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmSetLossLevel(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFusedProvider()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->setFusedProvider()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "setFusedProvider(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setGnssProvider()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->mdmPrReport()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "mdmPrReport(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setNetworkProvider()V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mIOpLocationMdm:Lcom/oneplus/android/server/location/IOpLocationMdm;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationMdm;->setNetworkProvider()V

    goto :goto_0

    :cond_0
    const-string v0, "OpLocationMdmInjector"

    const-string v1, "setNetworkProvider(), checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
