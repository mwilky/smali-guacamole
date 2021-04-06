.class final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;"
    }
.end annotation


# static fields
.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mLaunchRootTask:Lcom/android/server/wm/Task;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootHomeTask:Lcom/android/server/wm/ActivityStack;

.field private mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

.field private mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

.field private mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private final mTmpHomeStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpLayerForAnimationLayer:I

.field private mTmpLayerForSplitScreenDividerAnchor:I

.field private final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field private final mTmpNormalStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method private adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    move p2, v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTaskAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAppTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    move p2, v0

    :cond_2
    return p2
.end method

.method private adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;IZ)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    if-eqz p4, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    goto :goto_1

    :cond_0
    move p3, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    if-eqz p4, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    goto :goto_3

    :cond_3
    move p3, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return p3
.end method

.method private findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-gt v4, v5, :cond_1

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    move v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v2, p1, :cond_3

    if-nez p3, :cond_2

    if-ge v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    return v2
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    return v0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method private getPriority(Lcom/android/server/wm/ActivityStack;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    return v1

    :cond_4
    if-nez p5, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v0
.end method

.method public static synthetic lambda$XcH01_sSElIBkfdzcfbGZuAMtmk(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private moveSplitScreenTasksToFullScreen()V
    .locals 7

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private updateLaunchRootTask(I)Lcom/android/server/wm/Task;
    .locals 6

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_2

    if-eq v4, v1, :cond_2

    iput-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x1081

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v7

    const/16 v8, 0x67

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    :goto_0
    sget v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    if-lez v0, :cond_3

    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    :cond_5
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    :cond_0
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    return-void
.end method

.method addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_7

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_9

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: split screen primary stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    :goto_1
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return v1
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    add-int/lit8 v1, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p6, :cond_1

    const/4 p2, 0x1

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getNextStackId()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v8

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .locals 14

    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    move v3, p1

    if-ne v3, v2, :cond_1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move/from16 v2, p2

    :goto_0
    if-nez p5, :cond_2

    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object/from16 v10, p5

    :goto_1
    if-eqz p7, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v4

    :goto_2
    move-object v11, v4

    if-eqz v11, :cond_4

    const/4 v3, 0x0

    move v12, v3

    goto :goto_3

    :cond_4
    move v12, v3

    :goto_3
    new-instance v13, Lcom/android/server/wm/ActivityStack;

    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, v13

    move/from16 v5, p3

    move/from16 v6, p2

    move-object v7, v10

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v11, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-virtual {v11, v3, v4}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    if-eqz p4, :cond_8

    move-object v1, v11

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    :cond_6
    if-eqz p4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    invoke-virtual {v3, v12, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    :cond_8
    :goto_6
    return-object v3
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mPreferredTopFocusableStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_3

    sget-boolean v3, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->acquireUxPerfLock(ILjava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    return-void

    :cond_5
    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_a

    :cond_8
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_a
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v2
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz p2, :cond_1

    if-ne v3, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    nop

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    return-object v3

    :cond_5
    return-object v1
.end method

.method getNextStackId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;
    .locals 12

    move-object v7, p0

    move v8, p1

    move v9, p3

    move-object/from16 v10, p5

    if-eqz v8, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    :goto_0
    move v11, p2

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    goto :goto_3

    :cond_2
    if-eqz v10, :cond_a

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    if-eqz v9, :cond_3

    const v1, 0x7fffffff

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v2, :cond_8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_8
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-eq v3, v8, :cond_9

    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_9
    return-object v0

    :cond_a
    :goto_3
    nop

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p4

    move v4, p5

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getOrientation(I)I
    .locals 13

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v3

    if-eq v3, v4, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayContentInjector;->getOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    if-eq v0, v4, :cond_3

    return v0

    :cond_3
    const/4 v1, -0x1

    return v1

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5, v6}, Lcom/android/server/wm/OpQuickReplyInjector;->getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eq v5, v4, :cond_5

    return v5

    :cond_5
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v4, :cond_7

    if-eq v5, v0, :cond_7

    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_6

    int-to-long v8, v5

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x5253dbca

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v4, v1, v7, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v5

    :cond_7
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    int-to-long v8, v0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x61c711e7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v4, v1, v7, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootRecentsTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    if-nez p2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStackAt(I)Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected getStackCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method hasPinnedTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isSplitScreenModeActivated()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isStackVisible(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 14

    move-object v7, p0

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-static/range {p1 .. p4}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    return v8

    :cond_1
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v1, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v2, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v3, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_1

    :cond_3
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    :goto_1
    if-eqz p1, :cond_4

    move-object v0, p0

    move v1, p1

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v8, v9

    :goto_2
    return v8
.end method

.method public synthetic lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$onParentChanged$1$TaskDisplayArea()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "animationLayer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "boostedAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "homeAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_9

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    :goto_3
    nop

    if-ne v5, p1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    :cond_6
    :goto_4
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .locals 7

    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gt v1, v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    :goto_0
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveSplitScreenTasksToFullScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_4

    move-object v2, p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v1
.end method

.method onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStackRemoved(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeStack: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    :cond_0
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    const-string v5, "WindowManager"

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip pausing stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseBackStacks: stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mResumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring move of always-on-top stack="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bottom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-super {p0, v1, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result v7

    invoke-super {p0, v7, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    if-eqz p3, :cond_8

    if-nez v0, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    const v3, 0x7fffffff

    :cond_7
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->positionDisplayAt(IZ)V

    :cond_8
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Z)V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v1, p2, :cond_a

    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_a
    :goto_3
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    check-cast p2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 8

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionStackAt: Can only have one task on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v2, v0, :cond_5

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v5, -0x1

    if-nez v2, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v6

    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v5

    :goto_3
    invoke-static {v3, v4, v6, v5, p4}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedStack(IIIILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_3
    move-object v5, v2

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskBehindHome"

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    :goto_1
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method remove()Lcom/android/server/wm/ActivityStack;
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    if-nez v1, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v0, :cond_2

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    const v10, 0x7fffffff

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    move-object v3, v8

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesImmediately()V

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v9

    sub-int v9, v4, v9

    sub-int/2addr v6, v9

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/2addr v6, v7

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    const-string v6, "display-removed"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_6
    :goto_5
    iput-boolean v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return-object v3
.end method

.method protected removeChild(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackRemoved(Lcom/android/server/wm/ActivityStack;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->cancelAnimation()V

    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x2eda896

    const/4 v8, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v6, v7, v10, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 6

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    aget v2, p1, v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 8

    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_6

    aget v2, p1, v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-ltz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v7, v2, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_0
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean p1, v3, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    return p1
.end method
