.class Lcom/android/server/wm/cgv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/a$tsu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/cgv$you;
    }
.end annotation


# static fields
.field protected static final cjf:I = 0x7

.field protected static final ear:I = 0xc8

.field protected static final gwm:I = 0x1

.field protected static final ibl:I = 0x0

.field private static final ire:Ljava/lang/String; = "ColorStackPositioner"

.field protected static final obl:I = 0x5

.field protected static final oxb:I = 0x6

.field protected static final ugm:I = 0x2

.field protected static final vdb:I = 0x3

.field protected static final zgw:I = 0x4


# instance fields
.field private bio:F

.field private bvj:Z

.field private final cno:Landroid/graphics/Rect;

.field private dma:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

.field private gck:Landroid/graphics/Rect;

.field private igw:F

.field private kth:Lcom/android/server/wm/cgv$you;

.field private oif:I

.field private qbh:Z

.field private final rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field private final sis:Ljava/lang/Object;

.field private final ssp:Landroid/graphics/Rect;

.field private final tsu:Lcom/android/server/wm/WindowManagerService;

.field private wtn:Z

.field protected you:Lcom/android/server/wm/a;

.field private ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

.field protected zta:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->sis:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->gck:Landroid/graphics/Rect;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->dma:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/cgv;->qbh:Z

    iput-object p1, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wm/cgv;IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->cjf(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method

.method private cjf(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v7, Lcom/android/server/wm/tsu;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/tsu;-><init>(Lcom/android/server/wm/cgv;IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    return-object p0
.end method

.method private dma(IILandroid/graphics/Rect;)Z
    .locals 6

    const/4 p0, 0x0

    if-nez p3, :cond_0

    const-string p1, "ColorStackPositioner"

    const-string p2, "Failed to check isMoveToButton: rect is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, v0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-int/2addr p2, v1

    int-to-double p1, p2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, p3

    if-gez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic ibl(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->oxb(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/cgv;IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->obl(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method private obl(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v7, Lcom/android/server/wm/rtg;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/rtg;-><init>(Lcom/android/server/wm/cgv;IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic oif(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->zgw(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method private oxb(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 5

    iget-object p2, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    if-eqz p4, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getLastControlViewAction()I

    move-result v0

    const-string v1, "ColorStackPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStackUpCheck : cvActionFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    const-string v0, "ColorStackPositioner"

    const-string v4, "Change zoom window to full screen"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->fullZoomWindow()V

    goto :goto_0

    :cond_0
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    const-string v0, "ColorStackPositioner"

    const-string v4, "Delete zoom window"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->hideZoomWindow(I)V

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const-string v0, "ColorStackPositioner"

    const-string v4, "Change zoom window to mini zoom"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomOnSelectedButtonWithAnim()V

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/wm/cgv;->qbh()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ColorStackPositioner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUp updateZoomStackBounds mStackMoveBounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/cgv;->ywr(I)Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_4

    const-string p1, "ColorStackPositioner"

    const-string p3, "zoom moved to hot edge - notify app-side to show float handle"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->hideZoomWindow(I)V

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    if-eqz v1, :cond_5

    iput v0, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p3, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p3, p1, p4, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/android/server/wm/cgv;->oif:I

    invoke-direct {p0, p1, p4, v2}, Lcom/android/server/wm/cgv;->vdb(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    invoke-virtual {p0}, Lcom/android/server/wm/vju;->you()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private qbh()Z
    .locals 2

    iget p0, p0, Lcom/android/server/wm/cgv;->oif:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic rtg(Lcom/android/server/wm/cgv;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv;->gck:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/cgv;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/cgv;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/cgv;->veq(II)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/cgv;)Lcom/android/server/wm/ColorZoomWindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    return-object p0
.end method

.method private vdb(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V
    .locals 8

    const-string v0, "ColorStackPositioner"

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-nez v1, :cond_1

    const-string p0, "onMoveToLimitEdgeCheck failed : DisplayMetrics is null"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v2, 0x72

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget v4, v3, Landroid/graphics/Point;->y:I

    const/16 v5, 0x32

    invoke-static {v5, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    :cond_2
    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    sub-int v4, v3, v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topLimitEdgeY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bottomLimitEdgeY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentRect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithPanAnimLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_2

    :cond_4
    if-le v3, v4, :cond_5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr v4, p2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    const-string p0, "onMoveToLimitEdgeCheck failed var is null"

    goto :goto_0
.end method

.method private veq(II)V
    .locals 3

    int-to-float p1, p1

    iget v0, p0, Lcom/android/server/wm/cgv;->bio:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/wm/cgv;->igw:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget p1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/cgv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/cgv;->wtn:Z

    return p1
.end method

.method private ywr(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "ColorStackPositioner"

    if-nez p0, :cond_0

    const-string p0, "isMoveToHandleHotEdge failed: DisplayMetrics is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/16 v3, 0x28

    invoke-static {v3, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hotEdgeOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt p1, v3, :cond_1

    iget p0, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v3

    if-le p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private zgw(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 6

    if-eqz p3, :cond_16

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/cgv;->qbh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomOnSelectedButton(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getLastControlViewAction()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    :cond_2
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/cgv;->sis:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/cgv;->qbh:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "ColorStackPositioner"

    const-string p1, "Failed to onStackMoveCheck: ControlViewInfo is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object v2, v2, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v3, "full_screen_button"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/cgv;->gck(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string p1, "ColorStackPositioner"

    const-string p2, "full screen button need restore"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x401

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, "ColorStackPositioner"

    const-string p1, "Can not starting mExpandScaleAnim before end other button anim"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_9
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "ColorStackPositioner"

    const-string p2, "full screen button is selected"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x81

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object v2, v2, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v5, "delete_zoom_button"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eq v0, v3, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/server/wm/cgv;->gck(I)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_d

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string p1, "ColorStackPositioner"

    const-string p2, "delete zoom button need restore"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x801

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_c
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p1, "ColorStackPositioner"

    const-string p2, "delete zoom button is selected"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x101

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object v2, v2, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v5, "mini_zoom_button"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eq v0, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/cgv;->gck(I)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "ColorStackPositioner"

    const-string p2, "mini zoom button need restore"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1001

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_f
    :goto_2
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/cgv;->dma(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const-string p0, "ColorStackPositioner"

    const-string p1, "Can not starting mShrinkScaleAnim before end mFullBtRestoreScaleAnim"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_13
    const-string p1, "ColorStackPositioner"

    const-string p2, "mini zoom button is selected"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x201

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    iput v3, p0, Lcom/android/server/wm/cgv;->oif:I

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {p1, p3, p4, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/cgv;->qbh:Z

    monitor-exit v1

    return-void

    :cond_14
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_15
    :goto_3
    return-void

    :cond_16
    :goto_4
    const-string p0, "ColorStackPositioner"

    const-string p1, "onStackMoveCheck failed var is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/cgv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/cgv;->wtn:Z

    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ColorStackPositioner"

    const-string v1, "binderDied call back ColorStackPositioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomAppState()V

    iget-object v0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetTmpRectForZoomAnim()V

    iget-object p0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    invoke-virtual {p0}, Lcom/android/server/wm/vju;->you()V

    return-void
.end method

.method public synthetic bvj(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->oif(IILcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method ear(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 4

    new-instance v0, Lcom/android/server/wm/a;

    iget-object v1, p0, Lcom/android/server/wm/cgv;->tsu:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    const-string v3, "ColorStackPositioner"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/a;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/cgv;->wtn:Z

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/a;->ssp(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/wm/cgv$you;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/cgv$you;-><init>(Lcom/android/server/wm/cgv;Lcom/android/server/wm/cgv$zta;)V

    iput-object p1, p0, Lcom/android/server/wm/cgv;->kth:Lcom/android/server/wm/cgv$you;

    iget-object v0, p0, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/a;->cno(Lcom/android/server/wm/a$sis;)V

    iget-object p1, p0, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/a;->kth(Lcom/android/server/wm/a$tsu;)V

    iput-object p2, p0, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    :cond_0
    return-void
.end method

.method fto(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMove: mStartX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/cgv;->bio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/cgv;->igw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorStackPositioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wm/cgv;->bio:F

    iput p2, p0, Lcom/android/server/wm/cgv;->igw:F

    iget-object p1, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mStackOriginalScaleBounds = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/cgv;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mStackMoveBounds = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mZoomService.mLastLongPressedRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/cgv;->rtg:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected gck(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x80

    if-nez p0, :cond_1

    and-int/lit16 p0, p1, 0x100

    if-nez p0, :cond_1

    and-int/lit16 p0, p1, 0x200

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic gwm(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/cgv;->ibl(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected hmo(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/cgv;->oif:I

    return-void
.end method

.method protected igw()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/cgv;->oif:I

    return p0
.end method

.method ire(Lcom/android/server/wm/WindowState;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/cgv;->bvj:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_0
    return-void
.end method

.method lqr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/cgv;->wtn:Z

    iget-object v0, p0, Lcom/android/server/wm/cgv;->you:Lcom/android/server/wm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->igw()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/cgv;->bvj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/cgv;->bvj:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/cgv;->zta:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public ugm(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onControlViewChanged: cvInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorStackPositioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/cgv;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/cgv;->dma:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->copyFrom(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/cgv;->qbh:Z

    iget-object p1, p0, Lcom/android/server/wm/cgv;->ywr:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    iget-object p0, p0, Lcom/android/server/wm/cgv;->dma:Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

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

.method protected wtn()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv;->cno:Landroid/graphics/Rect;

    return-object p0
.end method
