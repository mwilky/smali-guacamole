.class Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field private static final LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowed:Z

.field private mCallingUid:I

.field private mCrossUser:Z

.field private mFilterOnlyVisibleRecents:Z

.field private mProfileIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mTmpSortedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTopDisplayFocusStack:Lcom/android/server/wm/ActivityStack;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;

    sput-object v0, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    return-void
.end method

.method private createRunningTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    return-object v0
.end method

.method public static synthetic lambda$hR_Ryk91b0B2BdJN9eCfQfPwC3g(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RunningTasks;->processTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private processTask(Lcom/android/server/wm/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mTopDisplayFocusStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, v1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method getTasks(ILjava/util/List;ZLcom/android/server/wm/RootWindowContainer;IZZLandroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;Z",
            "Lcom/android/server/wm/RootWindowContainer;",
            "IZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    iput p5, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    iput-boolean p7, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    iput-object p8, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    iput-boolean p3, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    invoke-virtual {p4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTopDisplayFocusStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, p4, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$hR_Ryk91b0B2BdJN9eCfQfPwC3g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$hR_Ryk91b0B2BdJN9eCfQfPwC3g;

    const-class v1, Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
