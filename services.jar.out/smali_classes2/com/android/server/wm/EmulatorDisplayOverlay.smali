.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/DisplayContent;",
            "I",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    const-string v0, "EmulatorDisplayOverlay"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {p5, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    invoke-virtual {p5, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    nop

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v2, p5, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    const v0, 0x10802da

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    invoke-direct {p0, p4}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    invoke-direct {p0, p2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method
