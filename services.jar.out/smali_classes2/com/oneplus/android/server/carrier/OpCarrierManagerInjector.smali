.class public Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;
.super Ljava/lang/Object;
.source "OpCarrierManagerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "OpCarrierManagerInjector"

.field private static mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureValid()Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carrier_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    sput-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static grantCarrierPackageDefPermissions(I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantCarrierPackageDefPermissions(I)V

    :cond_0
    return-void
.end method

.method public static grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V

    :cond_0
    return-void
.end method

.method public static sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    :cond_0
    return-void
.end method

.method public static setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V

    :cond_0
    return-void
.end method

.method public static setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showCarrierShutdownAnimation()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->mOpCarrierManager:Lcom/oneplus/android/server/carrier/IOpCarrierManager;

    invoke-interface {v0}, Lcom/oneplus/android/server/carrier/IOpCarrierManager;->showCarrierShutdownAnimation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
