.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ReparentMoveStackMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field mCreatedByOrganizer:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceShowForAllUsers:Z

.field private mHasBeenVisible:Z

.field mInRemoveTask:Z

.field mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mLastTaskOrganizerWindowingMode:I

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

.field mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mResizeMode:I

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotation:I

.field private mShadowRadius:F

.field final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    const/4 v6, 0x1

    iput v6, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iput v7, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    iput v7, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput v7, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    iput v7, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    iput v7, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    iput v7, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    new-instance v10, Lcom/android/server/wm/Dimmer;

    invoke-direct {v10, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    iput-object v9, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v9, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput v8, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    new-instance v8, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v8, v0, v9}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    iput v7, v0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    if-eqz p35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v7

    :cond_0
    invoke-static {v2, v7}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v7, p12

    iput v7, v0, Lcom/android/server/wm/Task;->mUserId:I

    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    move/from16 v8, p27

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    move-object/from16 v9, p18

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, -0x2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->setOrientation(I)V

    new-instance v10, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v10, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 v13, p33

    iput-object v13, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v14, p34

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 v6, p28

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 v6, p15

    iput-wide v6, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v1, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v4, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    :cond_1
    if-eqz v5, :cond_2

    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v1, p31

    goto :goto_0

    :cond_2
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 v1, p30

    iput v1, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    move/from16 v1, p31

    iput v1, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

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

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method private autoRemoveFromRecents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 7

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    return v0

    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :cond_8
    :goto_4
    return v0

    :cond_9
    :goto_5
    return v0
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    return-void
.end method

.method private closeRecentsChain()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private computeMaxUserPosition(I)I
    .locals 2

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private computeMinUserPosition(II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLocker: finishActivityAbove skip for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_3
    return v1
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    :cond_0
    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    if-le v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4

    if-nez v2, :cond_4

    return v4

    :cond_4
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_5

    return v4

    :cond_5
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getShadowRadius(Z)F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_3
    return v2
.end method

.method private hasVisibleChildren()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    return-void
.end method

.method private isFocused()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTopActivityLaunchedBehind()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$BP51Xfr33NBfsJ4rKO04RomX2Tg(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$CKQ9RLMNPYajktwO1VrUoQGHF_8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OQmaRDKXdgA0v6VfNwTX7wOkwBs(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SAhnD6goWlY1lXYn6fWba8f2JLs(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic lambda$TUGPkEKamN60PF6hJQxUwDBjU-M(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyAnimationUnchecked$9(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$3(Lcom/android/server/wm/Task;[I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getTopFullscreenActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$lqGdYR9ABiPuG3_68w1VS6hrr8c(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$performClearTask$2(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    return-void
.end method

.method static synthetic lambda$topActivityWithStartingWindow$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$topRunningActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$vJaPYJ0TW6MLVfOETMoxr75oHkk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wc9vA2EWxCoWO_MzNTKvEB8eLgw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_1

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

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

.method private resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 7

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/Task;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_2
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v6, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/Task;
    .locals 80
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, -0x1

    move-object/from16 v23, v2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v24, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v24 .. v24}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v61, v24

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const-string v29, ""

    const/16 v30, 0x0

    const/16 v31, 0x4

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v35, -0x1

    const/16 v36, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v37

    move-object/from16 v38, v4

    const/4 v4, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v73, v5

    move-object/from16 v69, v10

    move/from16 v62, v15

    move/from16 v4, v22

    move/from16 v63, v25

    move/from16 v64, v26

    move/from16 v65, v27

    move/from16 v66, v28

    move-object/from16 v67, v29

    move-object/from16 v68, v30

    move-object/from16 v70, v33

    move/from16 v71, v34

    move/from16 v72, v35

    move-object/from16 v5, v38

    move-object/from16 v25, v0

    move v10, v9

    move v15, v14

    move/from16 v0, v37

    move-object v9, v8

    move v14, v13

    move-object v8, v7

    move v13, v12

    move-object v7, v6

    move v12, v11

    move/from16 v11, v31

    move/from16 v6, v36

    :goto_0
    move/from16 v74, v14

    const-string v14, "ActivityTaskManager"

    if-ltz v0, :cond_3

    move/from16 v75, v13

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v29

    move/from16 v76, v12

    sparse-switch v29, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v12, "root_has_reset"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "window_layout_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "real_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "never_relinquish_identity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x10

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "calling_package"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x16

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "persist_task_version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v12, "last_description"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v12, "affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "min_width"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1b

    goto/16 :goto_2

    :sswitch_9
    const-string v12, "calling_feature_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string v12, "prev_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v12, "task_type"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xd

    goto/16 :goto_2

    :sswitch_c
    const-string v12, "calling_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x15

    goto/16 :goto_2

    :sswitch_d
    const-string v12, "user_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xa

    goto/16 :goto_2

    :sswitch_e
    const-string v12, "root_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x5

    goto/16 :goto_2

    :sswitch_f
    const-string v12, "supports_picture_in_picture"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x19

    goto/16 :goto_2

    :sswitch_10
    const-string v12, "auto_remove_recents"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x8

    goto/16 :goto_2

    :sswitch_11
    const-string v12, "orig_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    goto/16 :goto_2

    :sswitch_12
    const-string v12, "non_fullscreen_bounds"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string v12, "min_height"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1c

    goto/16 :goto_2

    :sswitch_14
    const-string v12, "resize_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x18

    goto/16 :goto_2

    :sswitch_15
    const-string v12, "effective_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xc

    goto :goto_2

    :sswitch_16
    const-string v12, "user_setup_complete"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xb

    goto :goto_2

    :sswitch_17
    const-string v12, "task_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x11

    goto :goto_2

    :sswitch_18
    const-string v12, "real_activity_suspended"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_19
    const-string v12, "task_affiliation_color"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x14

    goto :goto_2

    :sswitch_1a
    const-string v12, "next_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x13

    goto :goto_2

    :sswitch_1b
    const-string v12, "task_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_1c
    const-string v12, "last_time_moved"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xf

    goto :goto_2

    :sswitch_1d
    const-string v12, "asked_compat_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x9

    goto :goto_2

    :goto_1
    const/4 v12, -0x1

    :goto_2
    packed-switch v12, :pswitch_data_0

    const-string v12, "task_description_"

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v77, v7

    const-string v7, "Task: Unknown attribute="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v72, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_2
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v71, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_3
    invoke-static/range {v28 .. v28}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v70, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move/from16 v32, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_5
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v12, v28

    move-object/from16 v68, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v12, v28

    move-object/from16 v67, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v66, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_9
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v63, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v65, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_b
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v64, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_c
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_d
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move/from16 v21, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_e
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v12, v28

    move-object/from16 v18, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_10
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v15, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v17, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_12
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move/from16 v16, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_13
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v62, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_14
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move v14, v12

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_15
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move v13, v12

    move/from16 v14, v74

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_16
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move/from16 v14, v74

    move/from16 v13, v75

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v12, v28

    move-object/from16 v69, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v9, v28

    const/4 v10, 0x1

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :pswitch_19
    move-object/from16 v8, v28

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :pswitch_1a
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :pswitch_1b
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move/from16 v73, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :pswitch_1c
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :pswitch_1d
    const/4 v12, -0x1

    if-ne v4, v12, :cond_1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :cond_1
    move-object/from16 v77, v7

    goto :goto_3

    :cond_2
    move-object/from16 v77, v7

    :goto_3
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    move-object/from16 v7, v77

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v77, v7

    move/from16 v76, v12

    move/from16 v75, v13

    move-object/from16 v7, v61

    invoke-virtual {v7, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v12, v25

    :goto_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v13, v1, :cond_5

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v61, v2

    goto/16 :goto_8

    :cond_5
    :goto_6
    const/4 v1, 0x2

    if-ne v13, v1, :cond_a

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "affinity_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v23, v1

    move/from16 v61, v2

    goto :goto_7

    :cond_6
    const-string v1, "intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object v12, v1

    move/from16 v61, v2

    goto :goto_7

    :cond_7
    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    nop

    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move/from16 v61, v2

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v61, v2

    const-string v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    move-object/from16 v1, p0

    move/from16 v2, v61

    goto :goto_5

    :cond_a
    move/from16 v61, v2

    move-object/from16 v1, p0

    goto :goto_5

    :cond_b
    move/from16 v61, v2

    :goto_8
    if-nez v10, :cond_c

    move-object v9, v8

    goto :goto_9

    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v9, 0x0

    :cond_d
    :goto_9
    if-gtz v17, :cond_11

    if-eqz v12, :cond_e

    move-object v0, v12

    goto :goto_a

    :cond_e
    move-object/from16 v0, v23

    :goto_a
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    move/from16 v17, v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    nop

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v78, v10

    const/16 v10, 0x2200

    move/from16 v79, v13

    move/from16 v13, v62

    :try_start_1
    invoke-interface {v2, v0, v10, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v10

    :cond_f
    move/from16 v0, v17

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    goto :goto_b

    :cond_10
    move/from16 v17, v2

    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    :goto_b
    move/from16 v0, v17

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": effectiveUid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v0

    goto :goto_d

    :cond_11
    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    :goto_d
    const/4 v1, 0x1

    if-ge v6, v1, :cond_12

    if-ne v15, v1, :cond_13

    const/4 v1, 0x2

    if-ne v11, v1, :cond_13

    const/4 v11, 0x1

    move/from16 v0, v32

    goto :goto_e

    :cond_12
    const/4 v1, 0x3

    if-ne v11, v1, :cond_13

    const/4 v11, 0x2

    const/16 v32, 0x1

    move/from16 v0, v32

    goto :goto_e

    :cond_13
    move/from16 v0, v32

    :goto_e
    new-instance v1, Lcom/android/server/wm/ActivityStack;

    move-object/from16 v25, v1

    move-object/from16 v2, p1

    iget-object v10, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v26, v10

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    move/from16 v27, v4

    move-object/from16 v28, v12

    move-object/from16 v29, v23

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v5

    move-object/from16 v33, v77

    move/from16 v34, v76

    move/from16 v35, v75

    move/from16 v36, v74

    move/from16 v37, v13

    move/from16 v38, v17

    move-object/from16 v39, v18

    move-wide/from16 v40, v19

    move/from16 v42, v21

    move-object/from16 v43, v7

    move/from16 v44, v24

    move/from16 v45, v64

    move/from16 v46, v65

    move/from16 v47, v63

    move/from16 v48, v66

    move-object/from16 v49, v67

    move-object/from16 v50, v68

    move/from16 v51, v11

    move/from16 v52, v0

    move/from16 v53, v73

    move/from16 v54, v16

    move/from16 v55, v71

    move/from16 v56, v72

    invoke-direct/range {v25 .. v60}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    move-object/from16 v10, v70

    iput-object v10, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v2, v69

    iput-object v2, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v22, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v22, v0

    move/from16 v0, v25

    :goto_f
    if-ltz v0, :cond_14

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v2, v25

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, v26

    goto :goto_f

    :cond_14
    move-object/from16 v26, v2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1d
        -0x5ccdaff6 -> :sswitch_1c
        -0x5ba06deb -> :sswitch_1b
        -0x591a685c -> :sswitch_1a
        -0x4d0e36e6 -> :sswitch_19
        -0x43dc2f14 -> :sswitch_18
        -0x430d08ca -> :sswitch_17
        -0x3a0f4851 -> :sswitch_16
        -0x37680e48 -> :sswitch_15
        -0x3395d9b2 -> :sswitch_14
        -0x313f784c -> :sswitch_13
        -0x2a27c539 -> :sswitch_12
        -0x2a0990b3 -> :sswitch_11
        -0x1df202b3 -> :sswitch_10
        -0x158140a0 -> :sswitch_f
        -0x9b3481b -> :sswitch_e
        -0x8c511f1 -> :sswitch_d
        -0x7e175ab -> :sswitch_c
        0xac8bdb4 -> :sswitch_b
        0x13bdcee4 -> :sswitch_a
        0x1782e55f -> :sswitch_9
        0x2046b199 -> :sswitch_8
        0x24172928 -> :sswitch_7
        0x33cf43d3 -> :sswitch_6
        0x3c12eca9 -> :sswitch_5
        0x40756fcb -> :sswitch_4
        0x56e1584e -> :sswitch_3
        0x5bc3bc90 -> :sswitch_2
        0x772fa04e -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 4

    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private sendTaskAppeared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v5, :cond_4

    iput-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v5, "Setting Intent of "

    const-string v6, "ActivityTaskManager"

    if-nez v4, :cond_9

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v4

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_6
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v1

    :goto_3
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_4

    :cond_9
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to target "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_4

    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    :goto_4
    nop

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_5
    iput-object v1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    :goto_6
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_e

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    :cond_e
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string v6, "user_setup_complete"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v3

    :goto_7
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_10

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    :cond_10
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v5, 0x80000

    if-ne v4, v5, :cond_12

    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_11

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    :cond_12
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    :goto_8
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v3, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v3, :cond_13

    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_13
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :cond_14
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_3

    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    nop

    :goto_2
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    nop

    :goto_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskAuth: task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mLockTaskAuth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eq v2, p0, :cond_2

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    nop

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    nop

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    :cond_6
    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartChangeTransition(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-ne p2, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner()Z
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x4f52761a

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    return-void

    :cond_2
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    :cond_4
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    :cond_5
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    if-nez p3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    move-object v3, v0

    :cond_2
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    move-object v3, v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    :cond_3
    return-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjustFocusToNextFocusableStack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-object v1

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move v0, v4

    :cond_0
    if-ne v1, v5, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_3
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0xc8fcb49

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v9, 0x2

    aput-object v3, v7, v9

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;

    invoke-direct {v1, p5}, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 0

    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    const-string v1, "cleanUpActivityReferences"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    return-void
.end method

.method clearRootProcess()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_0
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    :goto_1
    if-eqz v3, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    const/16 v12, 0x64

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_5
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-nez v10, :cond_8

    const/4 v13, 0x5

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_8

    if-eqz v8, :cond_6

    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    move-object v13, v14

    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_8
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_9

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v13, :cond_14

    :cond_9
    if-nez v10, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_a
    if-nez v10, :cond_d

    if-nez p3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_d

    :cond_b
    if-eqz p3, :cond_c

    move-object/from16 v13, p3

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    :goto_5
    nop

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v14, v15, v9, v13}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    goto :goto_6

    :cond_d
    iget-object v9, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_e

    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    :cond_e
    if-eq v9, v13, :cond_f

    if-eqz v10, :cond_f

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v9}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_f
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_6
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v9, :cond_11

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    if-eqz v8, :cond_10

    if-nez v10, :cond_10

    iget v13, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    :cond_10
    move v13, v9

    :goto_7
    iput v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v9, :cond_13

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_8

    :cond_12
    move v13, v9

    :goto_8
    iput v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_13
    iget v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v9, :cond_14

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_14
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v9, :cond_16

    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v9, v13, :cond_15

    const/4 v9, 0x1

    goto :goto_9

    :cond_15
    const/4 v9, 0x2

    :goto_9
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    :cond_16
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_17

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v5

    float-to-int v13, v13

    iget v14, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v14, v9, v13}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v14

    iput v14, v1, Landroid/content/res/Configuration;->screenLayout:I

    sget-boolean v14, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v14, :cond_17

    if-ne v4, v12, :cond_17

    iget v12, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v12, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    iput v12, v1, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    if-ne v1, p4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_5
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createRemoteAnimationTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " top most activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method cropWindowsToStackBounds()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eq p0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method dontAnimateDimExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v2, "null"

    if-nez v1, :cond_10

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    :goto_1
    if-nez v0, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    iput-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    iput-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    iput-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v2, p1, Landroid/app/TaskInfo;->numActivities:I

    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v4, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v4, v2, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_5
    iput v4, p1, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    iput v4, p1, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    iput-object v5, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    goto :goto_7

    :cond_8
    :goto_6
    iput-object v3, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    :goto_7
    iget-object v5, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v5, v5, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_8

    :cond_9
    nop

    :goto_8
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method

.method fillsParent()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleable(Z)V
    .locals 3

    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityType()I
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDescendantTaskCount()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;

    const-class v3, Lcom/android/server/wm/Task;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    sget-object v4, Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {v4, v5, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getDisplayId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method getDragResizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v3, p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    return-object v2
.end method

.method getHasBeenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->getTaskBound()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method getRootTaskId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    return-object v0
.end method

.method getTaskOutset()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    :cond_1
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v3, p0

    goto/16 :goto_8

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->isTopActivityLaunchedBehind()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v11

    if-ne v11, v2, :cond_2

    return v2

    :cond_2
    if-ne v11, v12, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v13

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v12

    :goto_0
    if-ltz v14, :cond_10

    invoke-virtual {v10, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-nez v15, :cond_4

    move-object/from16 v3, p0

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v19

    if-eqz v19, :cond_5

    move/from16 v19, v12

    goto :goto_1

    :cond_5
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v3, p0

    if-ne v15, v3, :cond_8

    if-nez v19, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v20

    if-nez v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v20

    if-eqz v20, :cond_6

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v20, v12

    :goto_3
    move/from16 v9, v20

    goto :goto_5

    :cond_8
    if-nez v19, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, v12, :cond_b

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v12, 0x2

    return v12

    :cond_b
    const/4 v12, 0x3

    if-ne v2, v12, :cond_c

    if-nez v4, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    xor-int/lit8 v12, v7, 0x1

    move v4, v12

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    if-eqz v4, :cond_d

    const/4 v12, 0x2

    return v12

    :cond_c
    const/4 v12, 0x4

    if-ne v2, v12, :cond_d

    if-nez v5, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    xor-int/lit8 v12, v8, 0x1

    move v5, v12

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    if-eqz v5, :cond_d

    const/4 v12, 0x2

    return v12

    :cond_d
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    const/4 v12, 0x2

    return v12

    :cond_e
    const/4 v12, 0x2

    if-eqz v13, :cond_f

    if-eqz v1, :cond_f

    return v12

    :cond_f
    :goto_4
    add-int/lit8 v14, v14, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v3, p0

    :goto_5
    if-nez v9, :cond_11

    const/4 v2, 0x2

    return v2

    :cond_11
    const/4 v2, 0x1

    if-eq v11, v2, :cond_14

    const/4 v12, 0x3

    if-eq v11, v12, :cond_13

    const/4 v12, 0x4

    if-eq v11, v12, :cond_12

    goto :goto_6

    :cond_12
    if-eqz v8, :cond_17

    return v2

    :cond_13
    if-eqz v7, :cond_17

    return v2

    :cond_14
    if-eqz v8, :cond_15

    return v2

    :cond_15
    if-eqz v7, :cond_17

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_16

    const-string v2, "WindowManager"

    const-string v12, "getVisibility: make stack invisible behind translucent split-screen primary"

    invoke-static {v2, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v2, 0x2

    return v2

    :cond_17
    :goto_6
    if-eqz v6, :cond_18

    move/from16 v16, v2

    goto :goto_7

    :cond_18
    const/16 v16, 0x0

    :goto_7
    return v16

    :cond_19
    move-object/from16 v3, p0

    :goto_8
    const/4 v1, 0x2

    return v1
.end method

.method hasWindowsAlive()Z
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttached()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isClearingToReuseTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method isDragResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusableAndVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isForceHidden()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInChangeTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

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

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method isLeafTask()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method isOrganized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

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

.method isRootTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v1

    return v1
.end method

.method isTaskId(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopActivityFocusable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method isUidPresent(I)Z
    .locals 3

    sget-object v0, Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return v1
.end method

.method public synthetic lambda$getNextFocusableTask$4$Task(ZLjava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$isTaskAnimating$5$Task(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 1

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$performClearTask$1$Task(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    :cond_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    :cond_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    :cond_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    :cond_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method migrateToNewSurfaceControl()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing and adding activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to stack at top callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Task;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, " - onActivityStateChanged"

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set resumed activity to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v5

    if-eq v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    if-eq v2, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v6, :cond_4

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v8, p0, v6}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_6
    return-void
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    :cond_2
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 7

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

    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wm/EventLogTags;->writeWmStackRemoved(I)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_5
    if-eqz p2, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v3, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_9

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "addedToTask"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_a

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v4, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    :cond_a
    :goto_3
    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_0
    return-void
.end method

.method onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method performClearTask(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-object v0
.end method

.method performClearTaskLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    const-string v0, "clear-task-all"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "positionChildAt: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    :cond_2
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method prepareFreezingBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "Task(): skip update dim layers, tansit=TRANSIT_TASK_OPEN"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    :cond_3
    return-void
.end method

.method preserveOrientationOnResize()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->removeIfPossible(Lcom/android/server/wm/Task;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    :cond_7
    :goto_0
    return-void
.end method

.method removeIfPossible()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    :cond_3
    return-void
.end method

.method removeImmediately()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v1, "removeTask"

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifySingleTaskDisplayEmpty(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void
.end method

.method removedFromRecents()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p7

    iget-object v13, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v14, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    const v0, 0x7fffffff

    const/4 v7, 0x0

    if-ne v3, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {v13, v1, v2, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    if-ne v6, v11, :cond_1

    return v7

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v9

    if-nez v9, :cond_2

    return v7

    :cond_2
    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    move/from16 v16, v0

    const/4 v0, 0x0

    if-eqz v16, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v6, v7, v7, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    invoke-static {v7, v10}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    move/from16 v18, v7

    if-eqz v18, :cond_6

    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v15, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    :cond_6
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/16 v19, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v7, :cond_7

    :try_start_1
    invoke-virtual {v14, v11}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v9

    move-object/from16 v25, v11

    move-object v9, v6

    move-object v6, v14

    move v14, v10

    goto/16 :goto_d

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v7, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    move-object v2, v9

    move v9, v8

    if-eqz v7, :cond_9

    :try_start_2
    iget-object v8, v11, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v7, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object v6, v14

    move-object/from16 v2, p1

    move v14, v10

    goto/16 :goto_d

    :cond_9
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v22, v14

    move v14, v10

    move v10, v8

    if-eqz v7, :cond_a

    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object/from16 v6, v22

    move-object/from16 v2, p1

    goto/16 :goto_d

    :cond_a
    const/4 v8, 0x0

    :goto_6
    move/from16 v23, v8

    if-eqz v4, :cond_c

    const/4 v8, 0x1

    if-ne v4, v8, :cond_b

    if-nez v0, :cond_d

    if-eqz v23, :cond_b

    goto :goto_7

    :cond_b
    const/16 v21, 0x0

    goto :goto_8

    :cond_c
    const/4 v8, 0x1

    :cond_d
    :goto_7
    move/from16 v21, v8

    :goto_8
    move/from16 v24, v21

    move/from16 v21, v0

    move/from16 v0, v24

    :try_start_4
    invoke-virtual {v1, v6, v3, v0, v12}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz p6, :cond_e

    :try_start_5
    invoke-virtual {v13, v1, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_e
    if-eqz v7, :cond_f

    move-object/from16 v24, v6

    move-object/from16 v17, v7

    const/4 v3, 0x0

    move v3, v8

    move v8, v0

    move-object/from16 v25, v11

    move-object/from16 v11, p7

    :try_start_6
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v2, p1

    goto/16 :goto_d

    :cond_f
    move-object/from16 v24, v6

    move-object/from16 v17, v7

    move v3, v8

    move-object/from16 v25, v11

    :goto_9
    if-nez v5, :cond_10

    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_10
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v6, 0x3

    if-ne v14, v6, :cond_11

    if-ne v4, v3, :cond_11

    :try_start_8
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    if-eqz v18, :cond_12

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v6, v19, 0x1

    invoke-virtual {v15, v0, v6}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    :cond_12
    if-nez p5, :cond_14

    if-nez v18, :cond_13

    move v8, v3

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    move-object/from16 v6, v22

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_b

    :cond_14
    move-object/from16 v6, v22

    const/4 v7, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    move-object/from16 v9, v24

    invoke-virtual {v13, v1, v0, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    move-object v8, v2

    move-object/from16 v2, p1

    if-ne v2, v9, :cond_15

    goto :goto_c

    :cond_15
    move v3, v7

    :goto_c
    return v3

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v2, p1

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object/from16 v6, v22

    move-object/from16 v2, p1

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v8, v9

    move-object/from16 v25, v11

    move-object v9, v6

    move-object v6, v14

    move v14, v10

    :goto_d
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    .locals 9

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    .locals 9

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method resize(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v1

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    :cond_3
    const/4 v1, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v1

    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method returnsToHomeStack()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const v3, 0x10004000

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v4, 0x10004000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeStack()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-object p0
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_4

    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    move-object v2, v0

    :cond_5
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_9
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move-object v2, v0

    :goto_1
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_e

    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_f

    return-void

    :cond_f
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-static {p0, p1}, Lcom/android/server/wm/OpQuickReplyInjector;->resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz p2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    or-int/lit8 v1, v0, 0x2

    return v1

    :cond_0
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return-void
.end method

.method setDragResizing(ZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/ActivityStack;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    :cond_2
    return-void
.end method

.method setForceHidden(IZ)Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz p2, :cond_0

    or-int/2addr v0, p1

    goto :goto_0

    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method setForceShowForAllUsers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    return-void
.end method

.method setHasBeenVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_1
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_0
    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    sget-object v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    :goto_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    return-void
.end method

.method setResizeMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResumedActivity stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method shouldAnimate()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldDeferRemoval()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showForAllUsers()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showToCurrentUser()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

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

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner()Z

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

.method taskAppearedReady()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " translucent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method touchActiveTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    return-void
.end method

.method updateEffectiveIntent()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_0
    return-void
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not position non-resizeable task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method updateTaskDescription()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_3
    return-void
.end method

.method updateTaskMovement(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    if-nez p1, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v2

    iput v0, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    return v2
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Task"

    :goto_0
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
