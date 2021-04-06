.class public Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "ColorZoomWindowManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ColorZoomWindowManagerServiceInjector"

.field private static sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V

    :cond_0
    return-void
.end method

.method public static adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V

    :cond_0
    return-void
.end method

.method public static amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method

.method public static cantReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->cantReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkInSideGestureHotZone(FF)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->checkInSideGestureHotZone(FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    :cond_0
    return p1
.end method

.method public static displayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->displayChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .locals 1

    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x904
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static gestureSwipeFromBottom()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->gestureSwipeFromBottom()V

    :cond_0
    return-void
.end method

.method public static getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;-><init>()V

    return-object v0
.end method

.method public static getScaleBound(Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getScaleBound(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static getTaskBound()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getTaskBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public static getWindowState(Lcom/android/server/wm/ActivityStack;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getWindowState(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;
    .locals 8

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static getZoomAppConfigList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    return-object v0
.end method

.method public static getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v0

    return v0

    :cond_0
    return p0
.end method

.method public static handleSleepStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->handleSleepStack(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method public static handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V

    :cond_0
    return-void
.end method

.method public static handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method public static hideZoomWindow(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->hideZoomWindow(I)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/am/ActivityManagerService;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zoom_window:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IColorZoomWindowManager;

    sput-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    :cond_0
    return-void
.end method

.method public static isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportZoomWindowMode()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->isSupportZoomWindowMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method public static notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    :cond_0
    return-void
.end method

.method public static onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    :cond_0
    return-void
.end method

.method public static onRemoveStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method public static onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method public static prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V

    :cond_0
    return-void
.end method

.method public static recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z
    .locals 9

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/server/wm/IColorZoomWindowManager;->recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method public static removeIfPossible(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->removeIfPossible(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method public static removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static resetZoomAnimationFinished(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->resetZoomAnimationFinished(Z)V

    :cond_0
    return-void
.end method

.method public static setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    :cond_0
    return-void
.end method

.method public static shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldIgnoreInputShownForResult(II)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->shouldIgnoreInputShownForResult(II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V

    :cond_0
    return-void
.end method

.method public static updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void
.end method

.method public static updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V
    .locals 7

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IColorZoomWindowManager;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    :cond_0
    return-void
.end method

.method public static updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
