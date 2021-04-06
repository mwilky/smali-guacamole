.class public Lcom/android/server/wm/OpScreenRotationImprovementInjector;
.super Ljava/lang/Object;
.source "OpScreenRotationImprovementInjector.java"


# static fields
.field public static final IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

.field private static sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xae

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpScreenRotationImprovement;->calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 7

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IOpScreenRotationImprovement;->init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenrotationimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenRotationImprovement;

    sput-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    :cond_0
    return-void
.end method

.method public static isAnimating()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenRotationImprovement;->isAnimating()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static kill()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenRotationImprovement;->kill()V

    :cond_0
    return-void
.end method

.method public static loadAnimation(IZII)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpScreenRotationImprovement;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenRotationImprovement;->setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method

.method public static startScreenRotationAnimation()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->sOpScreenRotationImprovement:Lcom/android/server/wm/IOpScreenRotationImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenRotationImprovement;->startScreenRotationAnimation()V

    :cond_0
    return-void
.end method
