.class Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;,
        Lcom/android/server/wm/InsetsPolicy$BarWindow;
    }
.end annotation


# instance fields
.field private mAnimatingShown:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFocusedWin:Lcom/android/server/wm/WindowState;

.field private mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mShowingTransientTypes:Landroid/util/IntArray;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mTmpFloat9:[F


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method private abortTransient()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/InsetsPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/InsetsPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/InsetsPolicy;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    return-object v0
.end method

.method private checkAbortTransient(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/InsetsStateController;->isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAbortTransient skip for nonFull="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " topFull="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    :cond_3
    return-void
.end method

.method private controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;-><init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V

    iget-object v1, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->access$600(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V

    return-void
.end method

.method private forceShowsNavigationBarTransiently()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private forceShowsStatusBarTransiently()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private forceShowsSystemBarsForWindowingMode()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v3

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getForceShowSystemBars()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    return v4

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getForceShowSystemBars()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    return v4
.end method

.method private getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip focus on NotificationShade for going away appWin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    return-object p1

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    const-string v1, "InsetsPolicy"

    const-string v2, "Navigation bar is forcibly shown for the windowing mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsNavigationBarTransiently()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    :cond_7
    return-object p1
.end method

.method private getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsStatusBarTransiently()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    :cond_5
    return-object p1
.end method


# virtual methods
.method getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v0

    move-object v1, v0

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method hideTransient()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    return-void
.end method

.method isHidden(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->hasWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTransient(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$hideTransient$2$InsetsPolicy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showTransient$0$InsetsPolicy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showTransient$1$InsetsPolicy(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$LCR2QgJZxbNat6Qb0Be-JDpy3i0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$LCR2QgJZxbNat6Qb0Be-JDpy3i0;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method showTransient([I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    return v0
.end method

.method startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    new-instance v8, Landroid/view/InsetsSourceControl;

    invoke-direct {v8, v6}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p3, v4, p1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsSystemBarsForWindowingMode()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/InsetsPolicy;->getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/InsetsPolicy;->getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const-string v3, "InsetsPolicy"

    const-string v4, "navControlTarget is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->access$500(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->access$500(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    return-void
.end method
