.class public Lcom/android/server/wm/ActivityStack;
.super Lcom/android/server/wm/Task;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;,
        Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;,
        Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/wm/ActivityStack$ActivityState;,
        Lcom/android/server/wm/ActivityStack$StackVisibility;
    }
.end annotation


# static fields
.field static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field static final EVALUATE_READ_MODE_NOTIFICATION_MSG:I = 0x6f

.field private static final IS_SUPPORT_COLOR_ADS:Z

.field private static final MAX_ENSURE_VISIBILITY_DEPTH:I = 0x6

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_VISIBILITY_INVISIBLE:I = 0x2

.field static final STACK_VISIBILITY_VISIBLE:I = 0x0

.field static final STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;


# instance fields
.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private final mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private mEnsureActivityVisibilityDepth:I

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

.field final mHandler:Landroid/os/Handler;

.field mInResumeTopActivity:Z

.field protected mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

.field public mPerf:Landroid/util/BoostFramework;

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private final mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    iput-boolean p6, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .locals 4

    move-object v0, p0

    invoke-direct/range {p0 .. p35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimatingRequested:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v1}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    new-instance v1, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    new-instance v1, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    new-instance v1, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-static {p2}, Lcom/android/server/wm/EventLogTags;->writeWmStackCreated(I)V

    new-instance v1, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    new-instance v1, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V
    .locals 36

    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    if-eqz p7, :cond_0

    move-object/from16 v32, p7

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v32, v0

    :goto_0
    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move/from16 v26, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-wide/from16 v15, v18

    move-object/from16 v18, v32

    move/from16 v19, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p5

    move-object/from16 v34, p6

    move-object/from16 v35, p8

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    return v0
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$hBu5TaiY8B4H_AGkfMoFLmwCCRE;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$hBu5TaiY8B4H_AGkfMoFLmwCCRE;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    const/4 v1, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$DXQCHAtrf2X7qXtzByw5Fhuk8yg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$DXQCHAtrf2X7qXtzByw5Fhuk8yg;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    :goto_0
    return-void
.end method

.method private getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$F5e-149Q73snCogeDQIX0CnQxZ8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$F5e-149Q73snCogeDQIX0CnQxZ8;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private inFrontOfStandardStack()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$N2PfGF62p6Y1TYGt9lvFtsW9LmQ(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QjNtYzBoevRHPhQzwu5fh58MK0E(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$VIuWlCdKwIo4qqRlevMLniedZ7o(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$YAQEcQUrLqR06xiJJApMvOPIxhg(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$awakeFromSleepingLocked$1(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    return-void
.end method

.method static synthetic lambda$finishAllActivitiesImmediately$4(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishAllActivitiesImmediatelyLocked: finishing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic lambda$finishIfVoiceTask$3(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$11(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$getOccludingActivityAbove$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$goToSleep$2(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$navigateUpTo$5(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$navigateUpTo$6(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 7

    if-ne p4, p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    aput v0, p1, v0

    const/4 v1, 0x0

    aput-object v1, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$xHrv17CG5tAkxdutHyfCFt4-Iec(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    :cond_0
    return-void
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4

    const-string v0, "noMoreActivities"

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    const-string v2, "noMoreActivities"

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityTaskManager"

    const-string v3, "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": "

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    move v8, v0

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    return v5

    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->cancelInitializingActivities()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    if-nez v8, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    return v4

    :cond_3
    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v11, "ActivityTaskManager"

    if-ne v10, v7, :cond_5

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v10

    if-nez v10, :cond_6

    return v5

    :cond_6
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v10

    const-string v12, "resumeTopActivityLocked: Skip resume: some activity pausing."

    if-nez v10, :cond_9

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_10

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v13, v7, :cond_10

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v15, :cond_e

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v15, :cond_a

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_a

    move v15, v6

    goto :goto_1

    :cond_a
    move v15, v5

    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v6, v7, :cond_b

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    move v6, v5

    :goto_2
    if-nez v15, :cond_d

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v13, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    invoke-virtual {v1, v14, v5, v5}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v13

    :cond_e
    :goto_4
    if-eqz v13, :cond_10

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_f

    const-string v4, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v5

    :cond_10
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v13, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v6, v13}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v6

    if-nez v6, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping resume of top activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is stopped"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_11
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->launching:Z

    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v13, 0x1

    invoke-virtual {v7, v6, v13}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v6, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v6, :cond_13

    iget-object v13, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v5

    invoke-virtual {v6, v13, v15, v14, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    :cond_13
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_14

    const/4 v6, 0x1

    goto :goto_5

    :cond_14
    const/4 v6, 0x0

    :goto_5
    invoke-static {v5, v6}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    :cond_15
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v5

    if-nez v5, :cond_18

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_17

    :cond_16
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v4, 0x0

    return v4

    :cond_18
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_1a

    if-eq v6, v1, :cond_1a

    iget-object v5, v6, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_1a

    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v12, :cond_19

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Overriding userLeaving to false next="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " lastResumed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    move-object v12, v5

    move v5, v0

    goto :goto_6

    :cond_1a
    move-object v12, v5

    move v5, v0

    :goto_6
    invoke-virtual {v9, v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v13, :cond_1c

    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v13, :cond_1b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v13, 0x0

    invoke-virtual {v1, v5, v13, v7}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    or-int/2addr v0, v14

    move v13, v0

    goto :goto_7

    :cond_1c
    move v13, v0

    :goto_7
    if-eqz v13, :cond_24

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1e

    :cond_1d
    const-string v0, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v4, v11, v11}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_a

    :cond_1f
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v1, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v0, 0x0

    :goto_8
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_21

    const-string v11, "pre-top-activity"

    goto :goto_9

    :cond_21
    const-string v11, "pre-activity"

    :goto_9
    const/4 v14, 0x0

    invoke-virtual {v4, v7, v14, v0, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    :cond_22
    :goto_a
    if-eqz v12, :cond_23

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_b

    :cond_23
    const/4 v4, 0x1

    :goto_b
    return v4

    :cond_24
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v7, :cond_26

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v4, 0x1

    return v4

    :cond_26
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v14, v15}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessLaunchTimes(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_27

    invoke-static {v2, v7}, Lcom/android/server/wm/OpAppLockerInjector;->lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v14, 0x1

    return v14

    :cond_27
    const/4 v14, 0x1

    new-array v0, v14, [I

    const/16 v14, 0x5b

    const/4 v15, 0x0

    aput v14, v0, v15

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v7, :cond_2b

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, ""

    if-nez v2, :cond_28

    move-object v3, v15

    goto :goto_c

    :cond_28
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_c
    if-eqz v2, :cond_2a

    move/from16 v18, v5

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_29

    goto :goto_d

    :cond_29
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_d

    :cond_2a
    move/from16 v18, v5

    :goto_d
    invoke-static {v0, v14, v3, v15}, Lcom/oneplus/android/server/OpMotorInjector;->notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2b
    move/from16 v18, v5

    goto :goto_e

    :cond_2c
    move/from16 v18, v5

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v7, :cond_2e

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no-history finish of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on new resume"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, "resume-no-history"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2e
    if-eqz v7, :cond_2f

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2f

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "--AM_RESUME_ACTIVITY--"

    invoke-static {v0, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    :cond_2f
    if-eqz v2, :cond_31

    if-eq v2, v7, :cond_31

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_31

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, ", nowVisible="

    if-eqz v0, :cond_30

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not waiting for visible to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_30
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_f
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_1
    move-exception v0

    :goto_10
    nop

    :goto_11
    const/4 v0, 0x1

    iget-object v3, v9, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v5, :cond_32

    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    :cond_32
    if-eqz v2, :cond_40

    iget-boolean v14, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_38

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prepare close transition: prev="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v14, v5

    goto :goto_14

    :cond_34
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    const/16 v20, 0x7

    const/16 v21, 0x9

    if-ne v14, v15, :cond_35

    move/from16 v14, v20

    goto :goto_12

    :cond_35
    move/from16 v14, v21

    :goto_12
    nop

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eq v5, v14, :cond_36

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_36

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v15, 0x1083

    invoke-virtual {v5, v15, v14}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    :cond_36
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-ne v5, v14, :cond_37

    move/from16 v5, v20

    goto :goto_13

    :cond_37
    move/from16 v5, v21

    :goto_13
    nop

    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    :goto_14
    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v5, v0

    goto/16 :goto_18

    :cond_38
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v14, :cond_39

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Prepare open transition: prev="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto/16 :goto_18

    :cond_3a
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/16 v21, 0x10

    const/16 v22, 0x8

    if-ne v15, v5, :cond_3b

    const/4 v5, 0x6

    goto :goto_15

    :cond_3b
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_3c

    move/from16 v5, v21

    goto :goto_15

    :cond_3c
    move/from16 v5, v22

    :goto_15
    nop

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eq v5, v14, :cond_3d

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_3d

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v15, 0x1083

    invoke-virtual {v5, v15, v14}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    :cond_3d
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-ne v5, v14, :cond_3e

    const/4 v5, 0x6

    goto :goto_16

    :cond_3e
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_3f

    move/from16 v5, v21

    goto :goto_16

    :cond_3f
    move/from16 v5, v22

    :goto_16
    nop

    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_17

    :cond_40
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_41

    const-string v5, "Prepare open transition: no previous"

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto :goto_18

    :cond_42
    const/4 v5, 0x0

    const/4 v14, 0x6

    invoke-virtual {v3, v14, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    :goto_17
    move v5, v0

    :goto_18
    if-eqz v5, :cond_43

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_19

    :cond_43
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    :goto_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resume running: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " stopped="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " visibleRequested="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    if-eqz v6, :cond_46

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_46

    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_45
    const/4 v0, 0x1

    goto :goto_1a

    :cond_46
    const/4 v0, 0x0

    :goto_1a
    move v14, v0

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_47

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_47

    if-eqz v14, :cond_48

    :cond_47
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_48
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v6, :cond_49

    const/4 v0, 0x0

    goto :goto_1b

    :cond_49
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_1b
    move-object v15, v0

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    const-string v5, "Moving to RESUMED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (in existing)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_4a
    move/from16 v19, v5

    :goto_1c
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v7, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8, v8, v8}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    const/4 v0, 0x1

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-eqz v16, :cond_4b

    move/from16 v22, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v23, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v10

    invoke-virtual {v0, v7, v10, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v0

    xor-int/2addr v0, v8

    move/from16 v22, v0

    goto :goto_1d

    :cond_4b
    move/from16 v22, v0

    move/from16 v23, v10

    :goto_1d
    if-eqz v22, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_4c

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_4d

    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity config changed during resume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eq v0, v7, :cond_4e

    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_4e
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_4f

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_50

    :cond_4f
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_50
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    sget-boolean v4, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v4, :cond_51

    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_51
    const/4 v4, 0x1

    return v4

    :cond_52
    :try_start_1
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v8}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v8, :cond_55

    :try_start_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v10, :cond_54

    if-lez v9, :cond_54

    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v10, :cond_53

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v9

    const-string v9, "Delivering results to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_53
    move/from16 v24, v9

    :goto_1e
    invoke-static {v8}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1f

    :cond_54
    move/from16 v24, v9

    goto :goto_1f

    :catch_2
    move-exception v0

    move-object/from16 v25, v12

    goto/16 :goto_20

    :cond_55
    :goto_1f
    :try_start_3
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v9, :cond_56

    :try_start_4
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_56
    :try_start_5
    iget-boolean v9, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    iget v9, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v24, v8

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v25, v12

    :try_start_6
    iget-object v12, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v9, v10, v8, v12}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v9

    invoke-static {v8, v9}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_57

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_57
    nop

    :try_start_7
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_58

    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_58
    nop

    const/4 v2, 0x1

    goto/16 :goto_23

    :catch_3
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "resume-exception"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return v5

    :catch_4
    move-exception v0

    goto :goto_20

    :catch_5
    move-exception v0

    move-object/from16 v25, v12

    :goto_20
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resume failed; resetting state to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    const/4 v4, 0x1

    invoke-virtual {v7, v2, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    invoke-virtual {v7, v2, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    if-eqz v15, :cond_5a

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v15, v8, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v15, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_5b

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v5, 0x0

    goto :goto_21

    :cond_5b
    if-eqz v6, :cond_5d

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_21

    :cond_5c
    const/4 v5, 0x0

    goto :goto_21

    :cond_5d
    const/4 v5, 0x0

    :goto_21
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return v8

    :cond_5e
    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v23, v10

    move-object/from16 v25, v12

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_5f

    iput-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_22

    :cond_5f
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_22
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_62

    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_62
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :goto_23
    return v2
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    return v0
.end method

.method private setTaskBounds(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;

    const-class v1, Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method private static setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v3, "taskDisplayArea is null, bail early"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    move/from16 v0, p1

    const/4 v6, 0x0

    if-nez p2, :cond_1

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    invoke-virtual {v2, v0, v6, v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v8

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eqz v8, :cond_2

    if-ne v7, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    :cond_2
    if-ne v3, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v7}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    move v10, v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_1

    :cond_4
    move v12, v0

    :goto_1
    move v10, v12

    :cond_5
    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    iget-object v12, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    :cond_6
    if-ne v10, v11, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    :cond_7
    sget-boolean v12, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/16 v13, 0x64

    if-eqz v12, :cond_9

    if-eq v10, v0, :cond_8

    if-eqz v9, :cond_8

    iget-boolean v12, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_8

    move/from16 v12, p1

    if-eq v12, v13, :cond_a

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v14

    if-eqz v14, :cond_a

    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v15

    iget v11, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v15, v11, v0, v14}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    goto :goto_2

    :cond_8
    move/from16 v12, p1

    goto :goto_2

    :cond_9
    move/from16 v12, p1

    if-eq v10, v0, :cond_a

    if-eqz v9, :cond_a

    iget-boolean v11, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v11, :cond_a

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    iget v15, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v14, v15, v0, v11}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    :cond_a
    :goto_2
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v9, :cond_b

    :try_start_0
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-super {v1, v7}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v11

    move v7, v11

    sget-boolean v11, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v11, :cond_c

    if-ne v3, v13, :cond_c

    if-eq v7, v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v21}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_c
    if-eqz p2, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_d
    const/4 v11, 0x3

    if-ne v7, v11, :cond_f

    if-nez v8, :cond_e

    goto :goto_3

    :cond_e
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_3
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    if-eq v7, v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    :cond_10
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityStack;->getRawBounds(Landroid/graphics/Rect;)V

    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v11, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_12

    const/4 v11, 0x5

    if-ne v3, v11, :cond_13

    :cond_12
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v13, v0}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_13
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, v6, v13, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    const/4 v6, 0x2

    if-ne v3, v6, :cond_14

    if-ne v7, v0, :cond_14

    move v6, v0

    goto :goto_5

    :cond_14
    move v6, v13

    :goto_5
    if-eqz v6, :cond_15

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isForceHidden()Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    throw v11

    :cond_15
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method private updateSurfaceBounds()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfacePosition()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->scheduleAnimation()V

    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only have one child on stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const v2, 0x7fffffff

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_5
    throw v2
.end method

.method awakeFromSleepingLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$kcQFk5WutXx0C5lv3vrFd4Ndfrc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$kcQFk5WutXx0C5lv3vrFd4Ndfrc;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    :cond_0
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method cancelInitializingActivities()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    return-void
.end method

.method checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v3

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v5

    :goto_0
    if-eqz v7, :cond_4

    return v6

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p2, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    nop

    :goto_1
    return v5

    :cond_6
    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    :cond_7
    return v5

    :cond_8
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_0
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete pause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v7, "completePausedLocked"

    invoke-virtual {v0, v5, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing finish of activity: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueue pending stop if needed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " wasStopping="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visibleRequested="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-launching after pause: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    const-string v2, "completePauseLocked"

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App died during pause, not stopping: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_c
    if-eqz p1, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_e
    if-eqz v1, :cond_f

    if-eqz v0, :cond_10

    if-eq v1, v0, :cond_10

    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_10
    :goto_1
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_11

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v1, v6

    cmp-long v6, v1, v4

    if-lez v6, :cond_11

    sget-object v6, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_11
    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_14
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method dismissPip()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;-><init>(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard stacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Exiting application tokens:"

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

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exiting App #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 13

    move-object v8, p0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$vQtWLZ5xfBAnoGvYGdMf4XbE_3w;

    move-object v9, p2

    move/from16 v10, p6

    invoke-direct {v0, p0, v10, p2}, Lcom/android/server/wm/-$$Lambda$ActivityStack$vQtWLZ5xfBAnoGvYGdMf4XbE_3w;-><init>(Lcom/android/server/wm/ActivityStack;ZLjava/io/PrintWriter;)V

    const/4 v1, 0x0

    if-nez p5, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v11, v0

    move v0, v1

    goto :goto_0

    :cond_0
    move-object v11, v0

    move v0, v1

    :goto_0
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mPausingActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "    mResumedActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz p3, :cond_1

    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mLastPausedActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    :cond_1
    move v12, v0

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ActivityStack;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v12

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/Task;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    const-wide v2, 0x1090000000dL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    const-wide v2, 0x1090000000eL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_3
    const-wide v2, 0x10500000011L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    const-wide v2, 0x1080000001aL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureActivitiesVisibleLocked quit for depth overflow, starting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method finishAllActivitiesImmediately()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    invoke-virtual {v0, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v5, v7, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;

    const-class v1, Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public bridge synthetic getActivityType()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    return v0
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStack$jHtG24MuTe6p7JXjTvGcC5DidJ8;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$jHtG24MuTe6p7JXjTvGcC5DidJ8;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_0
    return-object v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskOutset()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getZoomStackOrientation(I)I
    .locals 8

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eq v6, v3, :cond_5

    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityRecord;->getZoomStackOrientation(I)I

    move-result v7

    if-ne v7, v6, :cond_2

    move p1, v7

    goto :goto_2

    :cond_2
    if-ne v7, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v7, v1, :cond_5

    :cond_4
    return v7

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method goToSleep()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$lRi576ARFILdHSErAxeCOOe5hlg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$lRi576ARFILdHSErAxeCOOe5hlg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep needs to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_1

    const-string v1, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still need to stop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    :cond_7
    return v0
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App died while pausing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3

    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->process(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/Task;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAttached()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isFocusedStackOnDisplay()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isForceScaled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    return v0
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSingleTaskInstance()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopSplitScreenStack()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopStackInDisplayArea()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$dismissPip$12$ActivityStack()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$dump$8$ActivityStack(ZLjava/io/PrintWriter;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stack #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$dumpActivities$10$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V
    .locals 22

    const-string v0, "    "

    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityStack$R37x5SGnmhrl07es1b8tPUL02qE;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$ActivityStack$R37x5SGnmhrl07es1b8tPUL02qE;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    if-nez p6, :cond_0

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    const/4 v9, 0x0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v4, p10

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    const/4 v15, 0x1

    xor-int/lit8 v16, p8, 0x1

    const/16 v19, 0x0

    const-string v13, "    "

    const-string v14, "Hist"

    move-object/from16 v10, p7

    move-object/from16 v11, p4

    move-object v12, v1

    move/from16 v17, p9

    move-object/from16 v18, p6

    move-object/from16 v20, v9

    move-object/from16 v21, p10

    invoke-static/range {v10 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    return-void
.end method

.method public synthetic lambda$dumpActivities$9$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "* "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mBounds="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mMinHeight="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p6, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "      "

    invoke-virtual {p6, p4, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving to RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (starting new instance) callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_0
    if-nez v4, :cond_2

    return v2

    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to back transition: task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/16 v4, 0x64

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    :cond_4
    const-string v0, "moveTaskToBackLocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v5, :cond_5

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-static {p0, v5, v2}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    return v6

    :cond_6
    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_7

    invoke-virtual {p0, v2, v6, v3, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eq v4, p0, :cond_8

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v3, v7, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->affinity:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickReply:resumeFocusedStacksTopActivities "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_9
    :goto_1
    return v6
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToFront: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1c

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v8, v7, :cond_5

    invoke-virtual {v8, v7}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-nez v12, :cond_5

    if-eqz p2, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {v7, v3, v9, v5}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {v7, v4, v9, v6}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    :goto_1
    return-void

    :cond_5
    if-eqz v10, :cond_6

    sget-object v12, Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;

    const-class v13, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v13

    invoke-static {v12, v13, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v12}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v14, p6

    goto/16 :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_8

    move-object/from16 v14, p6

    :try_start_1
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    move-object/from16 v14, p6

    :goto_2
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prepare to front transition: task="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v6, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    if-eqz v13, :cond_a

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v7, v3, v9, v5}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_3

    :cond_c
    invoke-direct {v7, v4, v9, v6}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    :goto_3
    const/4 v0, 0x0

    invoke-direct {v7, v2, v8, v0, v9}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_d
    if-nez p5, :cond_e

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_e
    iget v0, v8, Lcom/android/server/wm/Task;->mUserId:I

    iget v3, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, v3}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    nop

    return-void

    :cond_f
    move-object/from16 v14, p6

    :goto_4
    if-eqz v12, :cond_10

    :try_start_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p6

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    throw v0
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1, p0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_3

    if-eq p2, p0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-ne p2, p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    :cond_3
    if-nez p2, :cond_4

    move-object p2, p0

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    if-eqz p3, :cond_1

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v8, v2, :cond_2

    if-eqz v7, :cond_2

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityStack$Z7hLQOOjJ2p3oOFuD0JWMXQ1pOQ;

    invoke-direct {v8, v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$Z7hLQOOjJ2p3oOFuD0JWMXQ1pOQ;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v2, v4, v9}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v0, v8

    const/4 v6, 0x1

    move v8, v6

    move-object v6, v0

    goto :goto_0

    :cond_2
    move v8, v6

    move-object v6, v0

    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, -0x1

    if-eqz v15, :cond_3

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_1
    if-nez v12, :cond_3

    return v4

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    new-array v14, v9, [I

    aput p4, v14, v4

    new-array v13, v9, [Landroid/content/Intent;

    aput-object p5, v13, v4

    new-array v12, v9, [Lcom/android/server/uri/NeededUriGrants;

    aput-object p6, v12, v4

    move-object v11, v6

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$kXdVD8q_DOMPZdFLvQXXFO8ZuFM;

    invoke-direct {v0, v11, v14, v13, v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$kXdVD8q_DOMPZdFLvQXXFO8ZuFM;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v5, v0, v2, v9, v9}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    aget v18, v14, v4

    aget-object v19, v13, v4

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v15

    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const/4 v0, 0x3

    if-eq v15, v0, :cond_6

    const/4 v0, 0x2

    if-eq v15, v0, :cond_6

    if-eq v15, v9, :cond_6

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    goto/16 :goto_5

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v25, v5

    const/16 v5, 0x400

    :try_start_2
    invoke-interface {v0, v9, v5, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const-string v9, "navigateUpTo"

    invoke-virtual {v5, v3, v9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    move v0, v9

    move v8, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    :goto_3
    const/4 v5, 0x0

    move v8, v5

    :goto_4
    const/4 v0, 0x1

    const-string v5, "navigate-top"

    move-object v10, v6

    move-object v9, v11

    move/from16 v11, v18

    move-object/from16 v20, v12

    move-object/from16 v12, v19

    move-object/from16 v23, v13

    move-object/from16 v13, p6

    move-object/from16 v24, v14

    move-object v14, v5

    move-object/from16 v5, v21

    move/from16 v21, v15

    move v15, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v10, p3

    goto :goto_6

    :cond_6
    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    :goto_5
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v6, v4, v3, v10, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v10, p3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v5, v15

    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    return-void
.end method

.method public onARStopTriggered(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    sget-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v0, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    goto :goto_0

    :cond_5
    const-string v3, "ActivityTaskManager"

    const-string v4, "displayContent is null, so skip it avoid null exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-eq v1, v6, :cond_2

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eq v1, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eq v10, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v13

    if-eq v3, v13, :cond_5

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_6

    iget-object v15, v6, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v15, v9, v3, v13, v4}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p1

    goto :goto_2

    :cond_7
    move-object/from16 v8, p1

    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    :cond_8
    sget-boolean v9, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    if-eq v3, v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    if-ne v2, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v11, 0x0

    :cond_a
    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_3

    :cond_b
    if-eq v10, v12, :cond_c

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v9, v12, v12}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    if-eq v2, v9, :cond_d

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    :cond_d
    return-void
.end method

.method public bridge synthetic onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result p1

    return p1
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    :cond_0
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_8

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-lt p2, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "positionChildAt: positioning task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p2, p1, v5}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_5

    :try_start_0
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v6, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    :cond_5
    :goto_4
    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " other mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "positionChildAt"

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p1, p0, :cond_1

    const-string v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method postReparent()V
    .locals 3

    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method removeLaunchTickMessages()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object p1, v3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;

    const-class v3, Lcom/android/server/wm/Task;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityStack;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v3

    move v0, v3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    nop

    return v0

    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    throw v2
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 13

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move/from16 v6, p5

    move-object v7, v0

    goto :goto_2

    :cond_0
    if-eqz v11, :cond_1

    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    move v2, v0

    :goto_0
    nop

    new-instance v12, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    iget v1, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move/from16 v6, p5

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    move-object v7, v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    move v8, v0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v12

    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v1, v7

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v12, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_4
    return-object v7
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 2

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setBounds(Landroid/graphics/Rect;Z)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p1

    return p1
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    nop

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, p1

    goto :goto_0

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    return-void
.end method

.method public setWindowingMode(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    return-void
.end method

.method setWindowingMode(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;-><init>(Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method shouldIgnoreInput()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeStackWithLaunchBounds()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0, p0}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->shouldSkipSleep(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/ActivityRecord;->getTaskAffinityWithUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    :goto_1
    if-eq v5, v0, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v6

    :goto_3
    iget-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v10, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_5
    const/4 v10, 0x0

    const-string v11, "here"

    const-string v12, "Adding activity "

    const-string v13, "ActivityTaskManager"

    if-nez v3, :cond_7

    if-eqz v9, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_7

    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v13, v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-ne v10, v14, :cond_8

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    if-eq v15, v7, :cond_8

    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v7, :cond_8

    const-string v7, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v7, v14

    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to stack to task "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v13, v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-virtual {v7, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    sget-object v10, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_b
    move/from16 v11, p4

    goto/16 :goto_b

    :cond_c
    :goto_4
    if-eqz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Prepare open transition: starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    move/from16 v11, p4

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    iget-object v13, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move/from16 v11, p4

    const/4 v13, 0x6

    if-eqz v3, :cond_12

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v15, :cond_f

    const/16 v13, 0x10

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v15

    if-eqz v15, :cond_10

    const/16 v13, 0x1c

    const/4 v11, 0x0

    goto :goto_5

    :cond_10
    invoke-direct {v0, v2, v12, v1, v4}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v15

    if-eqz v15, :cond_11

    iput-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_11
    const/16 v13, 0x8

    :cond_12
    :goto_5
    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_6
    const/4 v13, 0x1

    if-eqz v3, :cond_14

    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x200000

    and-int v15, v15, v16

    if-eqz v15, :cond_15

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-ne v15, v1, :cond_13

    move v15, v6

    goto :goto_7

    :cond_13
    const/4 v15, 0x0

    :goto_7
    move v13, v15

    goto :goto_8

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v15

    const/4 v12, 0x5

    if-ne v15, v12, :cond_15

    const/4 v13, 0x0

    :cond_15
    :goto_8
    iget-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_16

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v6, v12, v12}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_a

    :cond_16
    if-eqz v13, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eq v15, v6, :cond_17

    const/4 v12, 0x0

    goto :goto_9

    :cond_17
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v15, :cond_18

    const/4 v12, 0x0

    :cond_18
    :goto_9
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    invoke-virtual {v1, v12, v3, v15}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_19
    :goto_a
    goto :goto_c

    :cond_1a
    move/from16 v11, p4

    :goto_b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_c
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const-string v0, "other-request"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 11

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v1, "startPausingLocked, reason:"

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessDuration(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    if-nez p3, :cond_4

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_4
    return v1

    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    :cond_6
    if-ne v0, p3, :cond_7

    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v3, :cond_a

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    :cond_a
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_b

    move v5, v4

    goto :goto_3

    :cond_b
    move v5, v1

    :goto_3
    invoke-static {v3, v5, v4}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    move-object v3, v0

    goto :goto_4

    :cond_d
    move-object v3, v5

    :goto_4
    iput-object v3, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "startPausingLocked"

    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    const/4 v3, 0x0

    if-eqz p3, :cond_f

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_f

    if-eqz v0, :cond_e

    const-string v6, "shouldResumeWhilePausing"

    invoke-virtual {v0, v6, p1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    goto :goto_5

    :cond_e
    move v6, v1

    :goto_5
    if-nez v6, :cond_f

    const/4 v3, 0x1

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_11

    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueueing pending pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :try_start_0
    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userLeaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v9, p1, v10, v3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v6

    const-string v7, "Exception thrown during pause"

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_6
    goto :goto_7

    :cond_11
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_7
    if-nez p2, :cond_12

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_17

    if-nez p2, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_8

    :cond_13
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_14

    const-string v5, "Key dispatch not paused for screen off"

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_8
    sget-boolean v2, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v2, :cond_15

    invoke-static {v0, p3}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    return v4

    :cond_17
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_18

    const-string v4, "Activity not running, resuming next."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-nez p3, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_19
    return v1
.end method

.method public bridge synthetic supportsSplitScreenWindowingMode()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method switchUser(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->switchUser(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method unhandledBackLocked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const-string v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_1
    return-void
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
