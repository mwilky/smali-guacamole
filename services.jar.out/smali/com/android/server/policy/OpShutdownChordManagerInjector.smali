.class public Lcom/android/server/policy/OpShutdownChordManagerInjector;
.super Ljava/lang/Object;
.source "OpShutdownChordManagerInjector.java"


# static fields
.field private static sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_shutdown_chord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpShutdownChordManager;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_shutdown_chord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpShutdownChordManager;

    sput-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    :cond_0
    return-void
.end method

.method public static interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpShutdownChordManager;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpShutdownChordManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z
    .locals 7

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/IOpShutdownChordManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static interceptPowerKeyUp()Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/IOpShutdownChordManager;->interceptPowerKeyUp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpShutdownChordManager;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public static updateSettings(Landroid/content/ContentResolver;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpShutdownChordManagerInjector;->sOpShutdownChord:Lcom/android/server/policy/IOpShutdownChordManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpShutdownChordManager;->updateSettings(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method
