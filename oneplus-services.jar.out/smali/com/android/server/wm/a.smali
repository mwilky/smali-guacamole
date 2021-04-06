.class Lcom/android/server/wm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/a$zta;,
        Lcom/android/server/wm/a$you;,
        Lcom/android/server/wm/a$tsu;,
        Lcom/android/server/wm/a$sis;
    }
.end annotation


# static fields
.field private static final bvj:Ljava/lang/String; = "ColorZoomWindowInputConsumer"

.field private static final ibl:F = 1.0f


# instance fields
.field private bio:Lcom/android/server/wm/a$sis;

.field private cno:Lcom/android/server/wm/WindowState;

.field private dma:Landroid/view/InputChannel;

.field private gck:Landroid/os/IBinder;

.field private igw:Lcom/android/server/wm/a$tsu;

.field private kth:Lcom/android/server/wm/a$you;

.field private oif:Landroid/view/InputApplicationHandle;

.field private qbh:Landroid/view/InputWindowHandle;

.field private final rtg:Landroid/graphics/Rect;

.field private final sis:Ljava/lang/String;

.field private ssp:Lcom/android/server/wm/DisplayContent;

.field private final tsu:Landroid/view/SurfaceControl$Transaction;

.field private wtn:Landroid/view/SurfaceControl;

.field private final you:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field private ywr:Landroid/view/InputChannel;

.field private final zta:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/a;->rtg:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/a;->you:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/a;->sis:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private bio(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/a;->sis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    if-nez v0, :cond_2

    const-string p0, "ColorZoomWindowInputConsumer"

    const-string p1, "window is in progress but there is no window handle."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/server/wm/a;->rtg:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/a;->rtg:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4
    :goto_1
    return-void
.end method

.method private tsu(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/a;)Lcom/android/server/wm/a$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/a;->bio:Lcom/android/server/wm/a$sis;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/a;->igw:Lcom/android/server/wm/a$tsu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/a$tsu;->binderDied()V

    :cond_0
    return-void
.end method

.method public cno(Lcom/android/server/wm/a$sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/a;->bio:Lcom/android/server/wm/a$sis;

    return-void
.end method

.method igw()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    const-string v1, "ColorZoomWindowInputConsumer"

    if-nez v0, :cond_0

    const-string p0, "Stack positioner not registered"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "unregisterInputConsumer... "

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/a;->tsu(I)V

    iget-object v0, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/a$zta;

    iget-object v2, p0, Lcom/android/server/wm/a;->kth:Lcom/android/server/wm/a$you;

    iget-object v3, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/wm/a$zta;-><init>(Lcom/android/server/wm/a;Lcom/android/server/wm/a$you;Landroid/view/InputChannel;Landroid/view/InputChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/a;->kth:Lcom/android/server/wm/a$you;

    iput-object v0, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/a;->oif:Landroid/view/InputApplicationHandle;

    iput-object v0, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/a;->gck:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public kth(Lcom/android/server/wm/a$tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/a;->igw:Lcom/android/server/wm/a$tsu;

    return-void
.end method

.method public rtg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/a;->kth:Lcom/android/server/wm/a$you;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected sis()Landroid/view/InputChannel;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    return-object p0
.end method

.method ssp(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    const-string v1, "ColorZoomWindowInputConsumer"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Stack positioner already registered"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p1

    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    iget-object p1, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    new-instance p1, Lcom/android/server/wm/a$you;

    iget-object v0, p0, Lcom/android/server/wm/a;->ywr:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/a;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v5

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/android/server/wm/a$you;-><init>(Lcom/android/server/wm/a;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p1, p0, Lcom/android/server/wm/a;->kth:Lcom/android/server/wm/a$you;

    new-instance p1, Landroid/view/InputApplicationHandle;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/wm/a;->oif:Landroid/view/InputApplicationHandle;

    iget-object v0, p0, Lcom/android/server/wm/a;->sis:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    const-wide v4, 0x12a05f200L

    iput-wide v4, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance p1, Landroid/view/InputWindowHandle;

    iget-object v0, p0, Lcom/android/server/wm/a;->oif:Landroid/view/InputApplicationHandle;

    iget-object v6, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-direct {p1, v0, v6}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object p1, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    iget-object v0, p0, Lcom/android/server/wm/a;->sis:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/a;->dma:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    iput v2, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/16 v0, 0x8fd

    iput v0, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput-wide v4, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->visible:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->paused:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iget-object p1, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iget-object p1, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    iput v2, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/a;->ssp:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/view/InputWindowHandle;->frameTop:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/view/InputWindowHandle;->frameRight:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/a;->bio(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register win: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/a;->gck:Landroid/os/IBinder;

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    iget-object p0, p0, Lcom/android/server/wm/a;->igw:Lcom/android/server/wm/a$tsu;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/wm/a$tsu;->binderDied()V

    :cond_1
    return v2
.end method

.method protected wtn(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/android/server/wm/a;->qbh:Landroid/view/InputWindowHandle;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    iput p2, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iget-object p2, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/a;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/a;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method protected you()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/a;->gck:Landroid/os/IBinder;

    return-object p0
.end method
