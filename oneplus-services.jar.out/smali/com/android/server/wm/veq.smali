.class public Lcom/android/server/wm/veq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/a$tsu;


# static fields
.field protected static final lqr:Ljava/lang/String; = "ColorMiniZoomWindowManagerService"


# instance fields
.field private bio:Lcom/android/server/wm/a;

.field private bvj:I

.field private cjf:Landroid/animation/ValueAnimator;

.field private cno:Lcom/android/server/wm/WindowManagerService;

.field private dma:I

.field private ear:F

.field private fto:Z

.field private gck:I

.field private gwm:I

.field private hmo:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

.field private ibl:I

.field private igw:Lcom/android/server/wm/lqr;

.field private ire:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

.field private kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field private obl:Z

.field private oif:Landroid/graphics/Rect;

.field private oxb:Landroid/graphics/Rect;

.field private qbh:Landroid/graphics/Rect;

.field private final rtg:Ljava/lang/Object;

.field private final sis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private ssp:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final tsu:Landroid/view/SurfaceControl$Transaction;

.field private ugm:I

.field private vdb:Z

.field private wtn:Lcom/android/server/wm/WindowState;

.field private final you:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private ywr:I

.field private zgw:Landroid/animation/ValueAnimator;

.field protected zta:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->you:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->rtg:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/veq;->gck:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/veq;->oxb:Landroid/graphics/Rect;

    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-direct {v1}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/veq;->ire:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-direct {v1}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/veq;->hmo:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iput-boolean v0, p0, Lcom/android/server/wm/veq;->fto:Z

    iput-object p1, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    new-instance p1, Lcom/android/server/wm/lqr;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/lqr;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/veq;)V

    iput-object p1, p0, Lcom/android/server/wm/veq;->igw:Lcom/android/server/wm/lqr;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ColorMiniZoomWindowManagerService: mAtms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  mWms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorMiniZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->cno()V

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private bio(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->cno()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    iget-object p2, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    const/16 v0, 0x20

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/a;->wtn(Landroid/graphics/Rect;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private bud(II)V
    .locals 2

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getLastControlViewAction()I

    move-result p2

    and-int/lit16 v0, p2, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x8000

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const-string p1, "ColorMiniZoomWindowManagerService"

    const-string p2, "Delete mini zoom window"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->hideZoomWindow(I)V

    move p1, v1

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/16 v0, 0x4000

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/veq;->cgv()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cgv()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "ColorMiniZoomWindowManagerService"

    if-nez v0, :cond_0

    const-string p0, "onMoveToLimitEdgeCheck failed : DisplayMetrics is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v5, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    :cond_1
    invoke-static {v3, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    move v5, v4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveToLimitEdgeCheck : mCurrentRect = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", topBottomLimitEdge = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", leftRightLimitEdgeX = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/wm/veq;->veq(Landroid/view/DisplayInfo;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Has done rebound animation"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/wm/veq;->lqr(Landroid/view/DisplayInfo;II)V

    return-void
.end method

.method private d(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    const-string v1, "ColorMiniZoomWindowManagerService"

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cancel last running mPanAnim before start next mPanAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/android/server/wm/veq;->ear:F

    if-eqz p1, :cond_0

    move p1, v2

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move p1, v2

    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMiniZoomWithAnimLocked startAlpha = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", endAlpha = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/wm/veq$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/veq$zta;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/server/wm/veq;->cjf:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qbh()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const-string v2, "ColorMiniZoomWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topStack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wm/veq;->wtn(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private f(Lcom/android/server/wm/ActivityStack;III)V
    .locals 8

    const-string v0, "ColorMiniZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "Failed to updateWindowPositionOnDisplayChanged: zoomStack is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "calculateWindowPositionOnDisplayChanged failed : DisplayMetrics is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "calculate and restore mini zoom bound after rotation changed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    const/16 v4, 0x28

    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    const/4 v5, 0x1

    if-eq p4, v5, :cond_2

    const/4 v5, 0x3

    if-ne p4, v5, :cond_3

    :cond_2
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    :cond_3
    iget-object p4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    iget-object p4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v2, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateWindowPositionOnDisplayChanged mCurrentRect = "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", centerX = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", centerY = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", topBottomLimitEdge = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", leftRightLimitEdgeX = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last screen = "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/veq;->dma:I

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " x "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wm/veq;->ywr:I

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", current screen = "

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p4, p0, Lcom/android/server/wm/veq;->dma:I

    div-int/lit8 p4, p4, 0x2

    if-ge v1, p4, :cond_4

    iget p2, p0, Lcom/android/server/wm/veq;->ywr:I

    div-int/lit8 p2, p2, 0x2

    if-ge v2, p2, :cond_6

    goto :goto_0

    :cond_4
    iget p4, p0, Lcom/android/server/wm/veq;->ywr:I

    div-int/lit8 p4, p4, 0x2

    if-ge v2, p4, :cond_5

    iget-object p3, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int v3, p2, v3

    goto :goto_0

    :cond_5
    iget-object p4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p2, p4

    sub-int v3, p2, v3

    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p3, p2

    sub-int v4, p3, v4

    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getMiniZoomStackBoundExpected(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/veq;->bio(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private gck(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 9

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-mini-zoom-leash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomCornerRadius()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->dipToPixelInZoom(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v8

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->cno()V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private kth(II)V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/veq;->bvj:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/wm/veq;->ibl:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/veq;->bio(II)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/veq;->vju(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private lqr(Landroid/view/DisplayInfo;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p2

    iget v5, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr v5, p2

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, p3

    iget v7, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v7, p3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v3, v4, :cond_0

    iput p2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iput p2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    if-ne v3, v6, :cond_1

    iput p3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    iget p1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr p1, p2

    iput p1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr p1, p3

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/veq;->vdw(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/veq;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/veq;->bio(II)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/veq;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->oxb:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/veq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->obl:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/wm/veq;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    return-object p0
.end method

.method private vdb(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p2, p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0

    :cond_2
    :goto_0
    const-string p1, "ColorMiniZoomWindowManagerService"

    const-string p2, "Failed to check isMoveToButton: rect is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private vdw(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    const-string v1, "ColorMiniZoomWindowManagerService"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cancel last running mPanAnim before start next mPanAnim"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/server/wm/veq;->oxb:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReboundAnimator : startRect = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/veq$you;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/wm/veq$you;-><init>(Lcom/android/server/wm/veq;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/server/wm/veq$sis;

    invoke-direct {p2, p0}, Lcom/android/server/wm/veq$sis;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/server/wm/bud;->ssp:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/server/wm/veq;->zgw:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private veq(Landroid/view/DisplayInfo;II)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "ColorMiniZoomWindowManagerService"

    const-string p1, "onMoveToLimitCornerEdgeCheck failed : displayInfo is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    if-ge v5, p2, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, p3, :cond_1

    iput p2, v3, Landroid/graphics/Rect;->left:I

    iput p3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iput p2, v3, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr p3, v2

    iput p3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v5, p1, p3

    iput p2, v3, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_2

    sub-int/2addr p1, p3

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    iput p2, v3, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    add-int/2addr p2, v1

    iput p2, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    move p1, v6

    goto :goto_3

    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v8, v7, p2

    if-le v5, v8, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, p3, :cond_4

    sub-int/2addr v7, p2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    iput p3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v1

    iput v7, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v5, p1, p3

    sub-int/2addr v7, p2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_5

    sub-int/2addr p1, p3

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    iput v7, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    sub-int/2addr v7, v1

    iput v7, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/veq;->vdw(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return v6

    :cond_7
    return v0
.end method

.method private vju(II)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getLastControlViewAction()I

    move-result p1

    and-int/lit16 p2, p1, 0x2000

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/veq;->rtg:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/veq;->fto:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/veq;->hmo:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorMiniZoomWindowManagerService"

    const-string p1, "Failed to onStackMoveCheck: ControlViewInfo is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->hmo:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object v0, v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v1, "delete_mini_zoom_button"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/16 v1, 0x2000

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->ibl(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x8000

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/veq;->vdb(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "ColorMiniZoomWindowManagerService"

    const-string v0, "delete mini zoom button need restore"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x12000

    iget-object v0, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    invoke-direct {p0, v2}, Lcom/android/server/wm/veq;->d(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/veq;->fto:Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/veq;->vdb(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ColorMiniZoomWindowManagerService"

    const-string v0, "delete mini zoom button is selected"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xa000

    iget-object v0, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->d(Z)V

    goto :goto_0

    :cond_3
    :goto_2
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method private wtn(Lcom/android/server/wm/WindowContainer;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mLaunchingMiniZoomFromRecent:Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/veq;->gck(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "ColorMiniZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createLeash: add wc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  leash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=getAnimationLeashParent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=getParentSurfaceControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/wm/veq;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->b(F)V

    return-void
.end method

.method private synthetic zgw(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/veq;->bud(II)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/veq;->ear:F

    return p1
.end method


# virtual methods
.method a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister mInputConsumer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorMiniZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->igw()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/veq;->wtn:Lcom/android/server/wm/WindowState;

    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 2

    const-string v0, "ColorMiniZoomWindowManagerService"

    const-string v1, "binderDied call back ColorMiniZoomWindowManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object p0, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    return-void
.end method

.method protected bvj()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qbh()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    const v0, 0x3e872b02    # 0.264f

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const v0, 0x3e9374bc    # 0.288f

    :cond_0
    return v0
.end method

.method public c(Lcom/android/server/wm/ActivityStack;)V
    .locals 6

    const-string v0, "ColorMiniZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "Failed to updateMiniZoomTaskBound"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    iget v4, p0, Lcom/android/server/wm/veq;->gck:I

    if-eq v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisplayChanged: Rotation changer from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/veq;->gck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/wm/veq;->gck:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->gwm(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/server/wm/veq;->f(Lcom/android/server/wm/ActivityStack;III)V

    :cond_4
    iput v3, p0, Lcom/android/server/wm/veq;->dma:I

    iput v2, p0, Lcom/android/server/wm/veq;->ywr:I

    :cond_5
    return-void
.end method

.method protected cjf(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/veq;->bvj:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/veq;->ibl:I

    iget-object v0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/veq;->bvj:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->vdb:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActionDown:  mDownX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/veq;->bvj:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   mDownY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/veq;->ibl:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mCurrentRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "  good to drag!!!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorMiniZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method cno()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dma()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->fullZoomWindow()V

    return-void
.end method

.method protected ear(Landroid/view/MotionEvent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/veq;->gwm:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/veq;->ugm:I

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->vdb:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/veq;->gwm:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/veq;->kth(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ColorMiniZoomWindowManagerService"

    const-string v1, "onActionMove: exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/veq;->ivd(Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public fto(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    return-void
.end method

.method public gwm(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hmo(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onControlViewChanged: cvInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorMiniZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->rtg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->ire:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->copyFrom(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->fto:Z

    iget-object p1, p0, Lcom/android/server/wm/veq;->hmo:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object p0, p0, Lcom/android/server/wm/veq;->ire:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-virtual {p1, p0}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->copyFrom(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected ibl(I)Z
    .locals 0

    const p0, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public igw(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/veq;->you:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected ire(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/veq;->vdb:Z

    iget-object v0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/sis;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/sis;-><init>(Lcom/android/server/wm/veq;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public irq(ILandroid/graphics/Rect;)V
    .locals 3

    const-string v0, "ColorMiniZoomWindowManagerService"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMiniZoomMode: spec rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qbh()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "error stack in top now"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qbh()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getMiniZoomStackBoundExpected(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMiniZoomMode default miniRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMiniZoomMode: mStartRect="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/veq;->qbh:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qbh()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/veq;->les(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->e()V

    iput p1, p0, Lcom/android/server/wm/veq;->zta:I

    const/high16 p1, 0x40000

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->oxb(I)V

    goto :goto_1

    :cond_2
    const-string p0, "startMiniZoomMode failed"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public ivd(Z)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/veq;->a()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_5

    if-eqz v9, :cond_5

    const-string v3, "ColorMiniZoomWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopMiniZoomMode:  windowHide ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    instance-of v4, v2, Lcom/android/server/wm/ActivityStack;

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mStackShown:Z

    iput v3, v2, Lcom/android/server/wm/WindowContainer;->mZoomLaunchFlags:I

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_3
    instance-of v4, v2, Lcom/android/server/wm/ActivityStack;

    if-eqz v4, :cond_4

    iput v3, v2, Lcom/android/server/wm/WindowContainer;->mZoomLaunchFlags:I

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v9, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v8

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v9, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    const-string v3, "ColorMiniZoomWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopMiniZoomMode:  wc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  leash="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/veq;->tsu:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/veq;->cno()V

    iget-object p1, p0, Lcom/android/server/wm/veq;->you:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method les(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register mInputConsumer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", win = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorMiniZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/a;

    iget-object v2, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/wm/a;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/a;->ssp(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register success = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    iget-object v0, p0, Lcom/android/server/wm/veq;->igw:Lcom/android/server/wm/lqr;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/a;->cno(Lcom/android/server/wm/a$sis;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/a;->kth(Lcom/android/server/wm/a$tsu;)V

    iput-object p2, p0, Lcom/android/server/wm/veq;->wtn:Lcom/android/server/wm/WindowState;

    iget-object p1, p0, Lcom/android/server/wm/veq;->bio:Lcom/android/server/wm/a;

    iget-object p0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    const/16 p2, 0x20

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/a;->wtn(Landroid/graphics/Rect;I)V

    :cond_1
    return-void
.end method

.method public synthetic obl(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->zgw(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public oif(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->oif:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected oxb(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    return-void
.end method

.method public qbh()Lcom/android/server/wm/ActivityStack;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->cno:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public qeg()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object v1, p0, Lcom/android/server/wm/veq;->kth:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget p0, p0, Lcom/android/server/wm/veq;->zta:I

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomWithAnim(Lcom/android/server/wm/ActivityStack;I)V

    :cond_0
    return-void
.end method

.method public ugm()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->sis:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected ywr()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->ssp:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method
