.class public Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;
.super Ljava/lang/Object;
.source "OpGnssConfigurationInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpGnssConfInj"

.field private static sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_gnss_configuration:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    sput-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    if-nez v0, :cond_1

    const-string v0, "OpGnssConfInj"

    const-string v1, "sOpGnssConfiguration is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssConfiguration;->initInstance(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "OpGnssConfInj"

    const-string v1, "initInstance, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static loadLABConfig(Ljava/util/Properties;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssConfiguration;->loadLABConfig(Ljava/util/Properties;)V

    goto :goto_0

    :cond_0
    const-string v0, "OpGnssConfInj"

    const-string v1, "loadLABConfig, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static loadProxyAPPConfig(Ljava/util/Properties;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssConfiguration;->loadProxyAPPConfig(Ljava/util/Properties;)V

    goto :goto_0

    :cond_0
    const-string v0, "OpGnssConfInj"

    const-string v1, "loadProxyAPPConfig, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static loadSpecialCarrierConfig(Ljava/util/Properties;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/location/OpGnssConfigurationInjector;->sOpGnssConfiguration:Lcom/oneplus/android/server/location/IOpGnssConfiguration;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssConfiguration;->loadSpecialCarrierConfig(Ljava/util/Properties;)V

    goto :goto_0

    :cond_0
    const-string v0, "OpGnssConfInj"

    const-string v1, "loadSpecialCarrierConfig, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
