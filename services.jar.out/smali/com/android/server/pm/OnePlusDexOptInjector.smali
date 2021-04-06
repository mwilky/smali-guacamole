.class public Lcom/android/server/pm/OnePlusDexOptInjector;
.super Ljava/lang/Object;
.source "OnePlusDexOptInjector.java"


# static fields
.field private static sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpState(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->dumpState(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->initInstance(Lcom/android/server/pm/PackageManagerService;)V

    :cond_0
    return-void
.end method

.method private static makeSureInstanceInitialized()Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOnePlusDexOptManager;

    sput-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    :cond_0
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOnePlusDexOptManager;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static notifyPrimaryDexDone(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->notifyPrimaryDexDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static packageRemoved(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->packageRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0}, Lcom/android/server/pm/IOnePlusDexOptManager;->shutdown()V

    :cond_0
    return-void
.end method

.method public static startUser(IZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOnePlusDexOptManager;->startUser(IZ)V

    return-void
.end method
