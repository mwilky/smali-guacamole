.class public Lcom/android/server/wm/OpStartingWindowManagerInjector;
.super Ljava/lang/Object;
.source "OpStartingWindowManagerInjector.java"


# static fields
.field public static final IS_STARTING_WINDOW_FEATURE_ENABLED:Z

.field private static sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x102

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->IS_STARTING_WINDOW_FEATURE_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    if-eqz p1, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method public static checkAppWindowAnimating(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->checkAppWindowAnimating(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkSplashWindowFlag()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->checkSplashWindowFlag()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpStartingWindowManager;->checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return p1
.end method

.method public static clearCacheWhenOnConfigurationChange(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->clearCacheWhenOnConfigurationChange(I)V

    :cond_0
    return-void
.end method

.method public static createAnimationForLauncherExit()Landroid/view/animation/Animation;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->createAnimationForLauncherExit()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppTransit(I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->getAppTransit(I)I

    move-result v0

    return v0

    :cond_0
    return p0
.end method

.method public static getStartingWindowType(III)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->getStartingWindowType(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static handleDestroySurfaces(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->handleDestroySurfaces(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpStartingWindowManager;->handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->init(Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->IS_STARTING_WINDOW_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_startingwindow:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpStartingWindowManager;

    sput-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    :cond_0
    return-void
.end method

.method public static interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onStartAppShotcut()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->onStartAppShotcut()V

    :cond_0
    return-void
.end method

.method public static preloadAppSplash(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpStartingWindowManager;->preloadAppSplash(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putSnapshot(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->putSnapshot(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZ)V
    .locals 6

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IOpStartingWindowManager;->reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZ)V

    :cond_0
    return-void
.end method

.method public static setAppTransit(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setAppTransit(I)V

    :cond_0
    return-void
.end method

.method public static setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static setFromRecentState(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setFromRecentState(Z)V

    :cond_0
    return-void
.end method

.method public static setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpStartingWindowManager;->setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipAppTransitionAnimation()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpStartingWindowManagerInjector;->sOpStartingWindowManager:Lcom/android/server/wm/IOpStartingWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpStartingWindowManager;->skipAppTransitionAnimation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
