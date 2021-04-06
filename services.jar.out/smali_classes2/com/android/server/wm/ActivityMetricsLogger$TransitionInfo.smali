.class final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionInfo"
.end annotation


# instance fields
.field mBindApplicationDelayMs:I

.field mCurrentTransitionDelayMs:I

.field final mCurrentTransitionDeviceUptime:I

.field mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLaunchTraceName:Ljava/lang/String;

.field final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field mLoggedStartingWindowDrawn:Z

.field mLoggedTransitionStarting:Z

.field final mPendingDrawActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFullyDrawn:Ljava/lang/Runnable;

.field final mProcessRunning:Z

.field final mProcessSwitch:Z

.field mReason:I

.field mStartingWindowDelayMs:I

.field final mTransitionStartTimeNs:J

.field final mTransitionType:I

.field mWindowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$000(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    iput-boolean p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDeviceUptime:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    if-ne p4, v1, :cond_3

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    if-ne p4, v1, :cond_3

    :cond_2
    const/4 v0, 0x7

    :cond_3
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_4
    new-instance v7, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZZ)V

    return-object v7
.end method


# virtual methods
.method allDrawn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method calculateCurrentDelay()I
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v0

    return v0
.end method

.method calculateDelay(J)I
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method contains(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInterestingToLoggerAndObserver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    return v0
.end method

.method removePendingDrawActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove pending draw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add pending draw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
