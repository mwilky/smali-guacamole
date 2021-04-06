.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"

# interfaces
.implements Lcom/android/server/wm/IScreenRotationAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
    }
.end annotation


# static fields
.field private static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAnimRunning:Z

.field private mBackColorSurface:Landroid/view/SurfaceControl;

.field private final mContext:Landroid/content/Context;

.field private mCurRotation:I

.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEndLuma:F

.field private mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

.field private final mEnterTransformation:Landroid/view/animation/Transformation;

.field private mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field private mFinishAnimReady:Z

.field private mFinishAnimStartTime:J

.field private mForceDefaultOrientation:Z

.field private mHeight:I

.field private mIsPerfLockAcquired:Z

.field private mIsRotation0:Z

.field private mOriginalDisplayRect:Landroid/graphics/Rect;

.field private final mOriginalHeight:I

.field private final mOriginalRotation:I

.field private final mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field private mRotateEnterAnimation:Landroid/view/animation/Animation;

.field private final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field private mRotateExitAnimation:Landroid/view/animation/Animation;

.field private final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field private mScreenshotLayer:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field private mStartLuma:F

.field private mStarted:Z

.field private mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field private mTakingScreenshotSuccess:Z

.field private final mTmpFloats:[F

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v0, "ScreenRotationAnimation"

    const-string v10, "WindowManager"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    iput-boolean v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    iput-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    iget v15, v14, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    iget v2, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v7, v2

    move v6, v3

    goto :goto_0

    :cond_0
    iget v2, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    move v7, v2

    move v6, v3

    :goto_0
    const/4 v5, 0x3

    if-eq v15, v13, :cond_2

    if-ne v15, v5, :cond_1

    goto :goto_1

    :cond_1
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    :goto_2
    iput v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v9, v15}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v4

    if-eq v4, v13, :cond_4

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v2, v12

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v13

    :goto_4
    move/from16 v16, v2

    if-eqz v16, :cond_5

    move v2, v6

    goto :goto_5

    :cond_5
    move v2, v7

    :goto_5
    iput v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    if-eqz v16, :cond_6

    move v2, v7

    goto :goto_6

    :cond_6
    move v2, v6

    :goto_6
    iput v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v3

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "BackColorSurface"

    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "RotationLayer"

    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {v5, v11, v12}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "EnterBlackFrameLayer"

    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    move v12, v0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v12}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    const-string v0, "ScreenRotationAnimation#getMedianBorderLuma"
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v19, v14

    const-wide/16 v13, 0x20

    :try_start_1
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    iget-object v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v20, v7

    :try_start_2
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v2

    move-object/from16 v2, p1

    move/from16 v21, v3

    move v3, v0

    move/from16 v22, v4

    move-object v4, v13

    move-object v13, v5

    const/4 v9, 0x3

    move-object/from16 v5, v18

    move/from16 v17, v6

    move-object v6, v14

    move/from16 v14, v20

    :try_start_3
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move/from16 v14, v20

    goto/16 :goto_b

    :cond_7
    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object v13, v5

    move/from16 v17, v6

    move v14, v7

    const/4 v9, 0x3

    :goto_7
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to attach screenshot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const v2, 0x1eab90

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_9

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    new-array v2, v9, [F

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    aput v4, v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    :goto_9
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move v14, v7

    goto :goto_b

    :cond_a
    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object v13, v5

    move/from16 v17, v6

    move-object/from16 v19, v14

    move v14, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to take screenshot of display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    :goto_a
    invoke-virtual {v13}, Landroid/view/Surface;->destroy()V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move-object/from16 v19, v14

    move v14, v7

    :goto_b
    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0xa1e0f4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v1, v8, v15}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    return v0
.end method

.method private setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x3

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 27

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    return v10

    :cond_1
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v11}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v11

    const/4 v0, 0x3

    const/4 v12, 0x2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    const/4 v13, 0x1

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008e

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    if-eqz v11, :cond_6

    if-eq v11, v10, :cond_5

    if-eq v11, v12, :cond_4

    if-eq v11, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0093

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0092

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_4
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008c

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008b

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_5
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0095

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0094

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_6
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008a

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0089

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    nop

    :goto_0
    sget-boolean v14, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v14, :cond_7

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v0, v9

    const/16 v17, 0x1

    aput-object v15, v0, v17

    const/16 v16, 0x2

    aput-object v12, v0, v16

    const v7, -0xa8d6d15

    const/4 v8, 0x0

    invoke-static {v10, v7, v9, v8, v0}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-static {v11, v0, v5, v6}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const/4 v7, 0x1

    invoke-static {v11, v7, v5, v6}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_1
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    if-eqz v13, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_9
    if-eqz v13, :cond_a

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_a

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    neg-int v7, v5

    neg-int v8, v6

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v6, 0x2

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v21, v0

    new-instance v0, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v22, v0

    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const v23, 0x1eab90

    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v25, 0x0

    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    move-object/from16 v24, v8

    move-object/from16 v26, v9

    invoke-direct/range {v18 .. v26}, Lcom/android/server/wm/BlackFrame;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v7, "WindowManager"

    const-string v8, "Unable to allocate black surface"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_2
    if-eqz v13, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startCustomAnimation()V

    goto :goto_3

    :cond_b
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->startScreenRotationAnimation()V

    goto :goto_3

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenRotationAnimation()V

    :goto_3
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-static {v0, v3, v4}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V

    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_2

    const/16 v3, 0x1090

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    return v2
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public hasScreenshot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->isAnimating()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRotating()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kill()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->kill()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x40f3b7ee

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    :cond_7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    :cond_d
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_1

    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 4

    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    return-void
.end method
