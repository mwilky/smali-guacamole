.class public Lcom/android/server/display/OpDisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "OpDisplayPowerControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

.field private static sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

.field private static sProximityResFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->DEBUG:Z

    const-class v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x119

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sProximityResFeature:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V
    .locals 2

    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/IOpDisplayPowerController;

    sput-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    :cond_0
    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/display/IOpDisplayPowerController;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sProximityResFeature:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/IOpProximityDisplayPowerController;

    sput-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    :cond_2
    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/IOpProximityController;

    invoke-interface {v0, v1}, Lcom/android/server/display/IOpProximityDisplayPowerController;->hookDisplayPowerController(Lcom/android/server/display/IOpProximityController;)V

    :cond_3
    return-void
.end method

.method public static updateHBMStatus(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/IOpDisplayPowerController;

    sput-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    :cond_0
    sget-object v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;->sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/display/IOpDisplayPowerController;->updateHBMStatus(Z)V

    :cond_1
    return-void
.end method
