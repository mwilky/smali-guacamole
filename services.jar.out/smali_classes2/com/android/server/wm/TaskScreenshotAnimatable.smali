.class Lcom/android/server/wm/TaskScreenshotAnimatable;
.super Ljava/lang/Object;
.source "TaskScreenshotAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskScreenshotAnim"


# instance fields
.field private mHeight:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTask:Lcom/android/server/wm/Task;

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/util/function/Function;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/SurfaceSession;",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Lcom/android/server/wm/Task;",
            "Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    :goto_0
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iput v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-long v6, v6

    iget v8, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    int-to-long v8, v8

    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x76489e36

    const/16 v12, 0x14

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v10, v11, v12, v1, v13}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    const-string v5, "RecentTaskScreenshotSurface"

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    iget v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v5, "TaskScreenshotAnimatable"

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_0
    return-void
.end method
