.class public final Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final OOM_ADJ_REASON_WHITELIST:Ljava/lang/String; = "updateOomAdj_whitelistChange"

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"

.field public static mCurRenderThreadTid:I

.field public static mIsTopAppRenderThreadBoostEnabled:Z

.field public static mPerf:Landroid/util/BoostFramework;

.field public static mPerfBoost:Landroid/util/BoostFramework;

.field public static mPerfHandle:I

.field private static sEnableFeatures:Z


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mBServiceAppThreshold:I

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field mEnableBgt:Z

.field mEnableProcessGroupCgroupFollow:Z

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field mProcessGroupCgroupFollowDex2oatOnly:Z

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field private mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xac

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OomAdjuster;->sEnableFeatures:Z

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    sput v0, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    sput-boolean v2, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v3, "5000"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.dex2oat_only"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.topAppRenderThreadBoost.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.bgt.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActiveUids;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    :cond_0
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    const/16 v5, 0x2bc

    const/16 v6, 0x3e7

    const/16 v7, 0x384

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v8, :cond_4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v8, 0xc8

    if-gt v0, v8, :cond_2

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-eq v0, v5, :cond_1

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x258

    if-ne v0, v8, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v0, v7, :cond_3

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v6, :cond_6

    :cond_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v7, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v6, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_5

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v8, 0x5

    if-ne v0, v8, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    :cond_6
    :goto_0
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v5, "OomAdjuster"

    const-string v13, "ActivityManager"

    if-eq v0, v8, :cond_11

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v8}, Lcom/android/server/am/OomAdjusterInjector;->adjustProcessAdj(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_7

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v7, "com.android.settings"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    :cond_7
    move v6, v0

    :goto_1
    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/am/OomAdjusterInjector;->setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_8
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_9

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v7, 0x384

    if-lt v0, v7, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x320

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    :cond_9
    :goto_3
    iget-boolean v0, v1, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    if-eqz v0, :cond_d

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x384

    if-lt v0, v7, :cond_c

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x3e7

    if-gt v0, v7, :cond_c

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-nez v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App adj change from cached state to fg state : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    new-array v7, v0, [I

    const/high16 v0, 0x42820000    # 65.0f

    const/16 v19, 0x0

    aput v0, v7, v19

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v18, 0x1

    aput v0, v7, v18

    move-object v0, v7

    sget-object v7, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    move/from16 v21, v3

    const/16 v3, 0xa

    invoke-virtual {v7, v3, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_4

    :cond_a
    move/from16 v21, v3

    goto :goto_4

    :cond_b
    move/from16 v21, v3

    goto :goto_4

    :cond_c
    move/from16 v21, v3

    :goto_4
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v3, 0x2bc

    if-ne v0, v3, :cond_e

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x384

    if-lt v0, v3, :cond_e

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x3e7

    if-gt v0, v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App adj change from previous state to cached state : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v3, 0x42824000    # 65.125f

    const/4 v7, 0x0

    aput v3, v0, v7

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v7, 0x1

    aput v3, v0, v7

    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_5

    :cond_d
    move/from16 v21, v3

    :cond_e
    :goto_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v3, v7}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adj "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    goto :goto_6

    :cond_11
    move/from16 v21, v3

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v7

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v8, " to "

    if-eq v0, v7, :cond_25

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iput v7, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v6, :cond_13

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting sched group of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_15

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const-string/jumbo v5, "remove task"

    if-ne v0, v5, :cond_14

    const/16 v0, 0x9

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    goto :goto_7

    :cond_14
    const/4 v5, 0x4

    iput v5, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    :goto_7
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v6, v5, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    const/4 v0, 0x0

    move/from16 v21, v0

    move-object/from16 v20, v14

    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_15
    move-object/from16 v17, v8

    const/16 v6, 0xa

    const/4 v0, 0x3

    if-eqz v7, :cond_18

    const/4 v8, 0x1

    if-eq v7, v8, :cond_17

    const/4 v8, 0x4

    if-eq v7, v0, :cond_16

    if-eq v7, v8, :cond_16

    const/16 v16, -0x1

    move/from16 v6, v16

    goto :goto_8

    :cond_16
    const/16 v16, 0x5

    move/from16 v6, v16

    goto :goto_8

    :cond_17
    const/4 v8, 0x4

    const/16 v16, 0x7

    move/from16 v6, v16

    goto :goto_8

    :cond_18
    const/4 v8, 0x4

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_8
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isInAudioWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-gtz v6, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IsInAudioWhiteList app.processName = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v20, v14

    const/4 v11, 0x0

    const/4 v14, 0x3

    invoke-virtual {v0, v11, v8, v14, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    :cond_19
    move-object/from16 v20, v14

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v11, v8, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_9
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1f

    if-eq v3, v0, :cond_1e

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_1b

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v8, "UI_FIFO"

    if-eqz v0, :cond_1a

    :try_start_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set RenderThread (TID "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to FIFO"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1c

    const-string v0, "Not setting RenderThread TID"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, -0xa

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1c

    :try_start_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_1
    move-exception v0

    :cond_1c
    :goto_a
    :try_start_4
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_1d

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const-string v11, "1"

    invoke-static {v0, v8, v11}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_1f
    const/4 v0, 0x3

    if-ne v3, v0, :cond_23

    if-eq v7, v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_21

    :try_start_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v8, 0x0

    :try_start_6
    invoke-static {v0, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_20

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v8, 0x0

    :try_start_8
    invoke-static {v0, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_20
    const/4 v8, 0x0

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_b

    :catch_4
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_b

    :cond_21
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v8, 0x0

    :try_start_a
    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_22

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v11, -0x4

    invoke-static {v0, v11}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_22
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_24

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const-string v12, "0"

    invoke-static {v0, v11, v12}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    :goto_c
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v11, :cond_26

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed setting thread priority of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_23
    const/4 v8, 0x0

    :cond_24
    :goto_d
    goto :goto_e

    :cond_25
    move-object/from16 v17, v8

    move-object/from16 v20, v14

    const/4 v8, 0x0

    :cond_26
    :goto_e
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    or-int/lit8 v4, v4, 0x1

    move v11, v4

    goto :goto_f

    :cond_27
    move v11, v4

    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_28

    :try_start_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    :cond_28
    :goto_10
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_29

    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_12

    :cond_29
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_2c

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_2b

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_2a

    goto :goto_11

    :cond_2a
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_13

    :cond_2b
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_13

    :cond_2c
    :goto_11
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    const/16 v12, 0xa

    move v14, v8

    const/4 v8, 0x4

    move/from16 v16, v7

    move-object/from16 v14, v17

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_13

    :cond_2d
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto :goto_13

    :cond_2e
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    :goto_12
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " next pss in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_13
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_37

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_30

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_31

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v0, v12, :cond_32

    const/4 v6, 0x1

    goto :goto_14

    :cond_32
    const/4 v6, 0x0

    :goto_14
    move v0, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-ge v3, v12, :cond_33

    const/4 v6, 0x1

    goto :goto_15

    :cond_33
    const/4 v6, 0x0

    :goto_15
    move v3, v6

    if-eqz v0, :cond_34

    if-nez v3, :cond_34

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    const/4 v4, 0x0

    :goto_16
    const/4 v5, 0x4

    if-ge v4, v5, :cond_34

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_34
    move-wide/from16 v4, p5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_35

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    :cond_35
    if-nez p2, :cond_36

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-virtual {v6, v2, v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_17

    :cond_36
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    :goto_17
    goto :goto_18

    :cond_37
    move-wide/from16 v4, p5

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_38

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_18

    :cond_38
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_39

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    :cond_39
    :goto_18
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    if-eq v0, v3, :cond_3a

    or-int/lit8 v11, v11, 0x4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    :cond_3a
    if-eqz v11, :cond_3c

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v3, v11

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": changes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " foreground="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " source="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " capability="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v21
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x384

    add-int/lit8 v3, v2, 0xa

    const/4 v4, 0x0

    const/16 v5, 0x389

    add-int/lit8 v6, v5, 0xa

    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    if-le v9, v8, :cond_0

    move v9, v8

    :cond_0
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v11, 0x1

    if-lez v10, :cond_1

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    :cond_2
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    if-ge v13, v11, :cond_3

    const/4 v13, 0x1

    :cond_3
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    add-int/lit8 v17, v1, -0x1

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v17

    :goto_1
    if-ltz v1, :cond_10

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    move/from16 v18, v8

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v8, :cond_f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_f

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v19, v9

    const/16 v9, 0x3e9

    if-lt v8, v9, :cond_e

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v8

    const-string v9, ")"

    move/from16 v20, v13

    const-string v13, " adj: "

    move/from16 v21, v12

    const-string v12, "ActivityManager"

    move/from16 v22, v5

    packed-switch v8, :pswitch_data_0

    move/from16 v5, v22

    if-eq v5, v6, :cond_b

    add-int/lit8 v8, v21, 0x1

    move/from16 v22, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_a

    const/4 v8, 0x0

    move v5, v6

    add-int/lit8 v6, v6, 0xa

    move/from16 v20, v0

    const/16 v0, 0x3e7

    if-le v6, v0, :cond_c

    const/16 v6, 0x3e7

    goto/16 :goto_5

    :pswitch_0
    const/4 v8, 0x0

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v5, :cond_7

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v5, :cond_6

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v14, v5, :cond_6

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-le v5, v15, :cond_5

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-ge v2, v3, :cond_4

    const/16 v15, 0x3e7

    if-ge v2, v15, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v15, v5

    goto :goto_2

    :cond_4
    move v15, v5

    :cond_5
    :goto_2
    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v14, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    :cond_7
    :goto_3
    if-nez v8, :cond_8

    if-eq v2, v3, :cond_8

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    if-lt v11, v10, :cond_8

    const/4 v11, 0x0

    move v2, v3

    add-int/lit8 v3, v3, 0xa

    const/16 v5, 0x3e7

    if-le v3, v5, :cond_8

    const/16 v3, 0x3e7

    :cond_8
    add-int v5, v2, v4

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    add-int v5, v2, v4

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v5

    iput v5, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    const-string v0, "Assigning activity LRU #"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (curCachedAdj="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curCachedImpAdj="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move/from16 v23, v0

    :goto_4
    move/from16 v12, v21

    move/from16 v5, v22

    move/from16 v0, v23

    goto/16 :goto_8

    :cond_a
    move/from16 v20, v0

    goto :goto_5

    :cond_b
    move/from16 v22, v0

    move/from16 v8, v21

    :cond_c
    :goto_5
    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    const-string v2, "Assigning empty LRU #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (curEmptyAdj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    move/from16 v23, v2

    :goto_6
    move v12, v8

    move/from16 v0, v22

    move/from16 v2, v23

    goto :goto_8

    :cond_e
    move/from16 v22, v0

    move/from16 v23, v2

    move/from16 v21, v12

    move/from16 v20, v13

    goto :goto_7

    :cond_f
    move/from16 v22, v0

    move/from16 v23, v2

    move/from16 v19, v9

    move/from16 v21, v12

    move/from16 v20, v13

    :goto_7
    move/from16 v12, v21

    move/from16 v0, v22

    move/from16 v2, v23

    :goto_8
    add-int/lit8 v1, v1, -0x1

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v13, v20

    goto/16 :goto_1

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 48

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-wide/from16 v13, p5

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v0, v1, :cond_1

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_0

    return v9

    :cond_0
    iput-boolean v15, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    return v9

    :cond_1
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v8, 0x13

    if-nez v0, :cond_2

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iput v9, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    return v9

    :cond_2
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iget v3, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v1, 0x2

    const-string v15, "ActivityManager"

    if-gtz v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_3

    if-ne v6, v7, :cond_4

    :cond_3
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making fixed: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "fixed"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    const/4 v2, 0x7

    iput v2, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-ne v11, v12, :cond_5

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v0, "pers-top-activity"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    const-string/jumbo v0, "pers-top-ui"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    :cond_7
    :goto_0
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v0, :cond_9

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v4, :cond_a

    goto :goto_2

    :cond_a
    move v15, v9

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v15, 0x1

    :goto_3
    return v15

    :cond_c
    const/4 v2, 0x7

    const/16 v16, 0x5

    const/16 v17, 0x3

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    if-ne v11, v12, :cond_12

    const/16 v19, 0x0

    const/16 v22, 0x3

    const-string/jumbo v2, "top-activity"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v20, 0x1

    move v2, v1

    sget-boolean v24, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    if-eqz v24, :cond_10

    sget v8, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eq v8, v9, :cond_f

    iget v8, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-lez v8, :cond_f

    iget v8, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    sput v8, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TOP-APP: pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", processName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", renderThreadTid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v8, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    if-ltz v8, :cond_d

    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v8}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v8, -0x1

    sput v8, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    :cond_d
    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    move/from16 v26, v0

    const/16 v0, 0x1096

    move/from16 v27, v2

    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v28, v3

    iget v3, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    move/from16 v29, v4

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VENDOR_HINT_BOOST_RENDERTHREAD perfHint was called. mPerfHandle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    goto :goto_4

    :cond_f
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    goto :goto_4

    :cond_10
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    :goto_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_11

    if-ne v6, v7, :cond_22

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making top: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    move/from16 v26, v0

    move/from16 v28, v3

    move/from16 v29, v4

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v0, :cond_15

    const/16 v19, 0x64

    const/16 v22, 0x3

    const-string/jumbo v0, "running-remote-anim"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v2, v1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_13

    if-ne v6, v7, :cond_14

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making running remote anim: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_5
    move/from16 v27, v2

    goto/16 :goto_8

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-string/jumbo v0, "instrumentation"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v2, 0x4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_16

    if-ne v6, v7, :cond_14

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making instrumentation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v19, 0x0

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    :goto_6
    move/from16 v22, v0

    const-string v0, "broadcast"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v2, 0xb

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_19

    if-ne v6, v7, :cond_14

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making broadcast: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/16 v19, 0x0

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_7

    :cond_1b
    const/4 v0, 0x0

    :goto_7
    move/from16 v22, v0

    const-string v0, "exec-service"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v2, 0xa

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1c

    if-ne v6, v7, :cond_14

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making exec-service: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    if-ne v11, v12, :cond_1f

    const/16 v19, 0x0

    const/16 v22, 0x0

    const-string/jumbo v0, "top-sleeping"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v20, 0x1

    move v2, v1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1e

    if-ne v6, v7, :cond_14

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making top (sleeping): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1f
    const/16 v22, 0x0

    move/from16 v19, p2

    const/16 v2, 0x13

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-nez v0, :cond_20

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    const-string v0, "cch-empty"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_20
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_21

    if-ne v6, v7, :cond_14

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making empty: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_22
    :goto_8
    if-nez v20, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v9, v17

    const/4 v8, 0x2

    move/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v4, v16

    const/4 v3, 0x7

    move v12, v3

    move/from16 v30, v28

    move/from16 v3, v19

    move/from16 v31, v29

    move/from16 v4, v20

    move/from16 v32, v5

    move/from16 v5, v27

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v21, v7

    move v12, v8

    move/from16 v8, v16

    const/4 v12, 0x0

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZIIIII)V

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    iget v2, v11, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    iget v3, v11, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    move v9, v1

    move/from16 v22, v3

    goto :goto_9

    :cond_23
    move/from16 v17, v1

    move/from16 v32, v5

    move/from16 v16, v6

    move/from16 v21, v7

    move/from16 v30, v28

    move/from16 v31, v29

    const/4 v12, 0x0

    move/from16 v0, v19

    move/from16 v9, v20

    move/from16 v2, v27

    :goto_9
    const/16 v1, 0x12

    if-le v2, v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v2, 0x12

    const-string v1, "cch-rec"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_24

    move/from16 v6, v16

    move/from16 v8, v21

    if-ne v6, v8, :cond_26

    goto :goto_a

    :cond_24
    move/from16 v6, v16

    move/from16 v8, v21

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to cached recent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    move/from16 v6, v16

    move/from16 v8, v21

    :cond_26
    :goto_b
    const-string v7, ": "

    const-string v5, "Raise to "

    const/4 v4, 0x4

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_27

    if-le v2, v4, :cond_2b

    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0xc8

    const/4 v2, 0x4

    const-string v1, "fg-service"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const/16 v22, 0x2

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_28

    if-ne v6, v8, :cond_2b

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0xc8

    const/4 v2, 0x6

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string v1, "has-overlay-ui"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v22, 0x2

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_2a

    if-ne v6, v8, :cond_2b

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to overlay ui: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x32

    if-le v0, v1, :cond_2e

    iget-wide v3, v11, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v20, v0

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v3, v0

    cmp-long v0, v3, v13

    if-gtz v0, :cond_2c

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2f

    :cond_2c
    const/16 v0, 0x32

    const-string v1, "fg-service-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_2d

    if-ne v6, v8, :cond_30

    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2e
    move/from16 v20, v0

    :cond_2f
    move/from16 v0, v20

    :cond_30
    :goto_d
    const/16 v4, 0x8

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_31

    if-le v2, v4, :cond_33

    :cond_31
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v1, :cond_33

    const/16 v0, 0xc8

    const/16 v2, 0x8

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string v1, "force-imp"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    const/16 v22, 0x2

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_32

    if-ne v6, v8, :cond_33

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to force imp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHeavyWeight()Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x190

    const-string v3, "heavy"

    if-le v0, v1, :cond_35

    const/16 v0, 0x190

    const/16 v22, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_34

    if-ne v6, v8, :cond_35

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to heavy: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/16 v1, 0xd

    if-le v2, v1, :cond_37

    const/16 v2, 0xd

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_36

    if-ne v6, v8, :cond_37

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to heavy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x258

    const-string v3, "home"

    if-le v0, v1, :cond_39

    const/16 v0, 0x258

    const/16 v22, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_38

    if-ne v6, v8, :cond_39

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to home: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    const/16 v1, 0xe

    if-le v2, v1, :cond_3b

    const/16 v2, 0xe

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3a

    if-ne v6, v8, :cond_3b

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to home: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x2bc

    if-le v0, v1, :cond_3d

    const/16 v0, 0x2bc

    const/16 v22, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string/jumbo v1, "previous"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3c

    if-ne v6, v8, :cond_3d

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to prev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/16 v1, 0xf

    if-le v2, v1, :cond_3f

    const/16 v2, 0xf

    const-string/jumbo v1, "previous"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3e

    if-ne v6, v8, :cond_40

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to prev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_3f
    move/from16 v1, v22

    goto :goto_f

    :cond_40
    :goto_e
    move/from16 v1, v22

    :goto_f
    if-eqz p7, :cond_41

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_41
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    iput-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v3, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v4, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BackupRecord;

    if-eqz v4, :cond_48

    iget-object v3, v4, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v3, :cond_48

    const/16 v3, 0x12c

    if-le v0, v3, :cond_46

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/16 v0, 0x12c

    const/16 v12, 0x8

    if-le v2, v12, :cond_43

    const/16 v2, 0x8

    :cond_43
    const-string v3, "backup"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_44

    if-ne v6, v8, :cond_45

    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to backup: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    :cond_46
    const/16 v3, 0x9

    if-le v2, v3, :cond_48

    const/16 v2, 0x9

    const-string v3, "backup"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_47

    if-ne v6, v8, :cond_48

    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to backup: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v12

    const/16 v18, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v47, v12

    move v12, v3

    move/from16 v3, v47

    :goto_10
    move/from16 v21, v9

    if-ltz v3, :cond_93

    if-gtz v0, :cond_4a

    if-eqz v1, :cond_4a

    const/4 v9, 0x2

    if-le v2, v9, :cond_49

    goto :goto_11

    :cond_49
    move/from16 v28, v1

    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move v9, v6

    move-object v14, v7

    move/from16 v38, v12

    move-object v6, v15

    move/from16 v44, v21

    const/16 v4, 0x1f4

    move v12, v8

    goto/16 :goto_32

    :cond_4a
    :goto_11
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    move/from16 v28, v1

    iget-boolean v1, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    const/16 v1, 0xa

    if-le v2, v1, :cond_4d

    const/16 v2, 0xa

    const-string/jumbo v1, "started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_4c

    if-ne v6, v8, :cond_4b

    goto :goto_12

    :cond_4b
    move/from16 v29, v2

    goto :goto_13

    :cond_4c
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v2

    const-string v2, "Raise procstate to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move/from16 v2, v29

    :cond_4d
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_4f

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4e

    const-string v1, "cch-started-ui-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_4e
    move v1, v0

    move/from16 v33, v3

    move-object/from16 v34, v4

    goto :goto_14

    :cond_4f
    move/from16 v29, v2

    iget-wide v1, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v33, v3

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v34, v4

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v1, v3

    cmp-long v1, v13, v1

    if-gez v1, :cond_52

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_52

    const/16 v0, 0x1f4

    const-string/jumbo v1, "started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_50

    if-ne v6, v8, :cond_51

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    :cond_52
    const/16 v4, 0x1f4

    if-le v0, v4, :cond_53

    const-string v1, "cch-started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_53
    move v1, v0

    move/from16 v2, v29

    goto :goto_14

    :cond_54
    move/from16 v33, v3

    move-object/from16 v34, v4

    move v1, v0

    :goto_14
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_5a

    iget v3, v9, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v0, :cond_59

    nop

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_15

    :cond_55
    const/4 v0, 0x0

    :goto_15
    or-int v4, v12, v0

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v27, v1

    move/from16 v29, v2

    :try_start_1
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v38, v5

    move/from16 v37, v6

    const-wide/32 v5, 0x81e8a55

    :try_start_2
    invoke-interface {v0, v5, v6, v1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v12, v0

    goto :goto_16

    :catch_0
    move-exception v0

    goto :goto_16

    :catch_1
    move-exception v0

    move-object/from16 v38, v5

    move/from16 v37, v6

    goto :goto_16

    :catch_2
    move-exception v0

    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    :goto_16
    if-eqz v12, :cond_58

    nop

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    goto :goto_17

    :cond_56
    const/4 v0, 0x0

    :goto_17
    or-int/2addr v0, v4

    nop

    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_57

    const/4 v1, 0x4

    goto :goto_18

    :cond_57
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v0, v1

    move v12, v0

    goto :goto_19

    :cond_58
    or-int/lit8 v0, v4, 0x6

    move v12, v0

    goto :goto_19

    :cond_59
    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    goto :goto_19

    :cond_5a
    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    :goto_19
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v5, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    :goto_1a
    if-ltz v5, :cond_92

    if-gtz v0, :cond_5c

    if-eqz v1, :cond_5c

    const/4 v3, 0x2

    if-le v2, v3, :cond_5b

    goto :goto_1b

    :cond_5b
    move-object v14, v7

    move v4, v8

    move-object v6, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v9, v37

    move-object/from16 v40, v38

    move/from16 v38, v12

    goto/16 :goto_31

    :cond_5c
    :goto_1b
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move/from16 v27, v26

    move/from16 v26, v1

    move/from16 v47, v3

    move v3, v2

    move/from16 v2, v47

    :goto_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_91

    if-gtz v0, :cond_5e

    if-eqz v26, :cond_5e

    const/4 v1, 0x2

    if-le v3, v1, :cond_5d

    goto :goto_1d

    :cond_5d
    move/from16 v19, v3

    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    goto/16 :goto_30

    :cond_5e
    :goto_1d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    move/from16 v28, v2

    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v11, :cond_5f

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v41, v37

    move-object/from16 v40, v38

    move/from16 v34, v5

    move-object/from16 v37, v6

    move/from16 v21, v8

    move-object v15, v9

    move/from16 v38, v12

    goto/16 :goto_1f

    :cond_5f
    invoke-static {v1, v11}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    const/16 v29, 0x0

    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz p8, :cond_60

    const/16 v35, 0x1

    move-object/from16 v39, v1

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move/from16 v19, v3

    move/from16 v3, p2

    move-object/from16 v20, v4

    move-object/from16 v16, v34

    move-object/from16 v4, p3

    move/from16 v34, v5

    move-object/from16 v40, v38

    move/from16 v5, p4

    move-object/from16 v42, v7

    move/from16 v41, v37

    move-object/from16 v37, v6

    move-wide/from16 v6, p5

    move/from16 v38, v12

    move v12, v8

    move/from16 v8, p7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object v15, v9

    move/from16 v21, v12

    const/16 v12, 0x10

    move/from16 v9, v35

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v36

    goto :goto_1e

    :cond_60
    move-object/from16 v39, v1

    move-object/from16 v36, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v41, v37

    move-object/from16 v40, v38

    move/from16 v34, v5

    move-object/from16 v37, v6

    move/from16 v21, v8

    move-object v15, v9

    move/from16 v38, v12

    const/16 v12, 0x10

    move-object/from16 v7, v36

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    :goto_1e
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v9

    move-object/from16 v6, v39

    iget v1, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_87

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v19

    move v5, v0

    move-object v12, v6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_61

    nop

    :goto_1f
    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    goto/16 :goto_2f

    :cond_61
    const/16 v1, 0x1000

    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_62

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int v27, v27, v1

    :cond_62
    const/16 v1, 0x10

    if-lt v9, v1, :cond_63

    const/16 v9, 0x13

    :cond_63
    const/4 v2, 0x0

    iget v3, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_67

    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_65

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_65

    if-le v0, v8, :cond_64

    const-string v2, "cch-bound-ui-services"

    :cond_64
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    move v8, v0

    move/from16 v9, v19

    goto :goto_20

    :cond_65
    iget-wide v3, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v5

    cmp-long v1, v13, v3

    if-ltz v1, :cond_67

    if-le v0, v8, :cond_66

    const-string v2, "cch-bound-services"

    :cond_66
    move v8, v0

    :cond_67
    :goto_20
    if-le v0, v8, :cond_72

    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_68

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_68

    const/16 v6, 0xc8

    if-le v8, v6, :cond_69

    const/16 v1, 0x384

    if-lt v0, v1, :cond_73

    const-string v2, "cch-bound-ui-services"

    move v1, v0

    move/from16 v3, v19

    move/from16 v0, v26

    goto/16 :goto_22

    :cond_68
    const/16 v6, 0xc8

    :cond_69
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x48

    if-eqz v1, :cond_6b

    const/16 v1, -0x2bc

    if-lt v8, v1, :cond_6a

    move v1, v8

    move/from16 v3, v19

    goto :goto_21

    :cond_6a
    const/16 v1, -0x2bc

    const/16 v26, 0x2

    const/4 v3, 0x0

    iget v4, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v3, v4, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    const/16 v29, 0x1

    goto :goto_21

    :cond_6b
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6c

    if-gt v8, v6, :cond_6c

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_6c

    const/16 v1, 0xfa

    move/from16 v3, v19

    goto :goto_21

    :cond_6c
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_6d

    if-ge v8, v6, :cond_6d

    if-lt v0, v6, :cond_6d

    const/16 v1, 0xc8

    move/from16 v3, v19

    goto :goto_21

    :cond_6d
    if-lt v8, v6, :cond_6e

    move v1, v8

    move/from16 v3, v19

    goto :goto_21

    :cond_6e
    const/16 v1, 0x64

    if-le v0, v1, :cond_6f

    const/16 v1, 0x64

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, v19

    goto :goto_21

    :cond_6f
    move v1, v0

    move/from16 v3, v19

    :goto_21
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v4

    if-nez v4, :cond_70

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    :cond_70
    if-le v0, v1, :cond_71

    move v0, v1

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const-string/jumbo v2, "service"

    move/from16 v0, v26

    goto :goto_22

    :cond_71
    move v1, v0

    move/from16 v0, v26

    goto :goto_22

    :cond_72
    const/16 v6, 0xc8

    :cond_73
    move v1, v0

    move/from16 v3, v19

    move/from16 v0, v26

    :goto_22
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v5, 0x800004

    and-int/2addr v4, v5

    if-nez v4, :cond_7c

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v4

    if-le v4, v0, :cond_75

    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_74

    move v0, v4

    move v5, v0

    goto :goto_23

    :cond_74
    const/4 v0, 0x2

    move v5, v0

    goto :goto_23

    :cond_75
    move v5, v0

    :goto_23
    const/4 v6, 0x2

    if-ge v9, v6, :cond_78

    const/high16 v0, 0x4000000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v9, 0x5

    move/from16 v26, v5

    goto :goto_26

    :cond_76
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_77

    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_77

    const/4 v9, 0x5

    move/from16 v26, v5

    goto :goto_26

    :cond_77
    const/4 v9, 0x6

    move/from16 v26, v5

    goto :goto_26

    :cond_78
    const/4 v6, 0x2

    if-ne v9, v6, :cond_7a

    const/4 v9, 0x3

    const/4 v6, 0x0

    :try_start_3
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v19, v4

    move/from16 v26, v5

    :try_start_4
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v39, v6

    const-wide/32 v5, 0x81f62a4

    :try_start_5
    invoke-interface {v0, v5, v6, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move v6, v0

    goto :goto_25

    :catch_3
    move-exception v0

    goto :goto_24

    :catch_4
    move-exception v0

    move/from16 v39, v6

    goto :goto_24

    :catch_5
    move-exception v0

    move/from16 v19, v4

    move/from16 v26, v5

    move/from16 v39, v6

    :goto_24
    move/from16 v6, v39

    :goto_25
    if-eqz v6, :cond_79

    const/16 v0, 0x1000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    or-int/lit8 v27, v27, 0x7

    goto :goto_26

    :cond_79
    or-int/lit8 v27, v27, 0x7

    goto :goto_26

    :cond_7a
    move/from16 v19, v4

    move/from16 v26, v5

    :cond_7b
    :goto_26
    move/from16 v0, v26

    const/16 v5, 0x8

    goto :goto_27

    :cond_7c
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_7d

    const/16 v5, 0x8

    if-ge v9, v5, :cond_7e

    const/16 v4, 0x8

    move v9, v4

    goto :goto_27

    :cond_7d
    const/16 v5, 0x8

    const/4 v4, 0x7

    if-ge v9, v4, :cond_7e

    const/4 v4, 0x7

    move v9, v4

    :cond_7e
    :goto_27
    const/4 v6, 0x3

    if-ge v0, v6, :cond_7f

    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x80000

    and-int v4, v4, v19

    if-eqz v4, :cond_7f

    const/4 v0, 0x3

    move/from16 v26, v0

    goto :goto_28

    :cond_7f
    move/from16 v26, v0

    :goto_28
    if-nez v29, :cond_80

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v9, v0, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    :cond_80
    if-le v3, v9, :cond_82

    move v0, v9

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    if-nez v2, :cond_81

    const-string/jumbo v2, "service"

    move v3, v0

    goto :goto_29

    :cond_81
    move v3, v0

    :cond_82
    :goto_29
    const/4 v4, 0x7

    if-ge v3, v4, :cond_83

    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x20000000

    and-int v0, v0, v19

    if-eqz v0, :cond_83

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_83
    if-eqz v2, :cond_86

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v4, 0x2

    iput v4, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iget-object v0, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_85

    move v0, v9

    move/from16 v4, v21

    move/from16 v9, v41

    if-ne v9, v4, :cond_84

    goto :goto_2a

    :cond_84
    move-object/from16 v13, v40

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    goto :goto_2b

    :cond_85
    move v0, v9

    move/from16 v4, v21

    move/from16 v9, v41

    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v40

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v42

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " adj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " procState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v43

    invoke-virtual {v10, v6, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_86
    move v0, v9

    move/from16 v4, v21

    move-object/from16 v13, v40

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    :goto_2b
    const/4 v2, 0x1

    move/from16 v47, v1

    move v1, v0

    move/from16 v0, v47

    goto :goto_2d

    :cond_87
    move-object v12, v6

    move v1, v9

    move/from16 v4, v21

    move-object/from16 v13, v40

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    const/16 v2, 0x384

    if-ge v8, v2, :cond_88

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    goto :goto_2c

    :cond_88
    const/4 v2, 0x1

    :goto_2c
    move/from16 v3, v19

    :goto_2d
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v18, 0x8000000

    and-int v5, v5, v18

    if-eqz v5, :cond_89

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    :cond_89
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_8f

    if-eqz v2, :cond_8e

    if-lez v0, :cond_8e

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_8d

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    move-object/from16 v40, v13

    const/4 v13, 0x4

    and-int/2addr v5, v13

    if-nez v5, :cond_8b

    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_8a

    const/16 v26, 0x4

    goto :goto_2e

    :cond_8a
    const/16 v26, 0x2

    :cond_8b
    :goto_2e
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string/jumbo v5, "service"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v3, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    iget-object v5, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_8c

    if-ne v9, v4, :cond_90

    :cond_8c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise to service w/activity: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_8d
    move-object/from16 v40, v13

    goto :goto_2f

    :cond_8e
    move-object/from16 v40, v13

    goto :goto_2f

    :cond_8f
    move-object/from16 v40, v13

    :cond_90
    :goto_2f
    add-int/lit8 v2, v28, 0x1

    move v8, v4

    move-object v7, v14

    move-object/from16 v4, v20

    move/from16 v5, v34

    move/from16 v12, v38

    move-object/from16 v38, v40

    move/from16 v21, v44

    move-wide/from16 v13, p5

    move-object/from16 v34, v16

    move-object/from16 v47, v15

    move-object v15, v6

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v47

    goto/16 :goto_1c

    :cond_91
    move/from16 v28, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    :goto_30
    add-int/lit8 v5, v34, -0x1

    move v8, v4

    move-object v7, v14

    move-object/from16 v34, v16

    move/from16 v2, v19

    move/from16 v1, v26

    move/from16 v26, v27

    move/from16 v12, v38

    move-object/from16 v38, v40

    move/from16 v21, v44

    move-wide/from16 v13, p5

    move-object/from16 v47, v15

    move-object v15, v6

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v47

    goto/16 :goto_1a

    :cond_92
    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    :goto_31
    add-int/lit8 v3, v33, -0x1

    move v8, v4

    move-object v15, v6

    move v6, v9

    move-object v7, v14

    move-object/from16 v4, v16

    move/from16 v12, v38

    move-object/from16 v5, v40

    move/from16 v9, v44

    move-wide/from16 v13, p5

    goto/16 :goto_10

    :cond_93
    move/from16 v28, v1

    move/from16 v33, v3

    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move v9, v6

    move-object v14, v7

    move/from16 v38, v12

    move-object v6, v15

    move/from16 v44, v21

    const/16 v4, 0x1f4

    move v12, v8

    :goto_32
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v13, v1

    move/from16 v1, v28

    :goto_33
    if-ltz v13, :cond_b0

    if-gtz v0, :cond_95

    if-eqz v1, :cond_95

    const/4 v3, 0x2

    if-le v2, v3, :cond_94

    goto :goto_34

    :cond_94
    move-wide/from16 v3, p5

    move-object v5, v6

    move v14, v9

    const/16 v28, 0x3

    goto/16 :goto_42

    :cond_95
    :goto_34
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move v8, v1

    move v7, v2

    move v5, v3

    :goto_35
    if-ltz v5, :cond_a8

    if-gtz v0, :cond_97

    if-eqz v8, :cond_97

    const/4 v1, 0x2

    if-le v7, v1, :cond_96

    goto :goto_36

    :cond_96
    move-wide/from16 v3, p5

    move-object v5, v6

    move/from16 v29, v13

    move-object/from16 v42, v14

    move-object/from16 v6, v40

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    move v8, v7

    goto/16 :goto_40

    :cond_97
    :goto_36
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    iget-object v2, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v11, :cond_98

    move/from16 v23, v5

    move-object/from16 v46, v6

    move/from16 v27, v7

    move/from16 v29, v13

    move-object/from16 v42, v14

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    goto/16 :goto_38

    :cond_98
    invoke-static {v2, v11}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    if-eqz p8, :cond_99

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v45, v3

    move/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, p3

    move/from16 v23, v5

    move/from16 v5, p4

    move-object/from16 v46, v6

    move/from16 v27, v7

    const/16 v28, 0x3

    move-wide/from16 v6, p5

    move/from16 v29, v13

    move v13, v8

    move/from16 v8, p7

    move-object/from16 v42, v14

    move v14, v9

    move/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v20

    goto :goto_37

    :cond_99
    move-object/from16 v20, v2

    move-object/from16 v45, v3

    move/from16 v23, v5

    move-object/from16 v46, v6

    move/from16 v27, v7

    move/from16 v29, v13

    move-object/from16 v42, v14

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    move-object/from16 v7, v20

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    :goto_37
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v27

    move v5, v0

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_9a

    nop

    :goto_38
    move-wide/from16 v3, p5

    move v8, v13

    move/from16 v7, v27

    move-object/from16 v6, v40

    move-object/from16 v5, v46

    goto/16 :goto_3f

    :cond_9a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_9b

    const/16 v1, 0x13

    :cond_9b
    const/4 v2, 0x0

    if-le v0, v9, :cond_9f

    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_9c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_9c

    const/16 v4, 0xc8

    if-le v9, v4, :cond_9d

    const-string v2, "cch-ui-provider"

    goto :goto_3a

    :cond_9c
    const/16 v4, 0xc8

    :cond_9d
    if-lez v9, :cond_9e

    move v5, v9

    goto :goto_39

    :cond_9e
    const/4 v5, 0x0

    :goto_39
    move v0, v5

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const-string/jumbo v2, "provider"

    :goto_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v5

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v6

    and-int/2addr v5, v6

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    goto :goto_3b

    :cond_9f
    const/16 v4, 0xc8

    :goto_3b
    const/4 v5, 0x4

    if-gt v1, v5, :cond_a2

    if-nez v2, :cond_a0

    const-string/jumbo v2, "provider"

    :cond_a0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_a1

    const/4 v1, 0x3

    goto :goto_3c

    :cond_a1
    const/4 v1, 0x5

    goto :goto_3c

    :cond_a2
    const/4 v6, 0x2

    :goto_3c
    iget v8, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-wide/from16 v3, p5

    move-object/from16 v6, v40

    move-object/from16 v5, v45

    invoke-virtual {v5, v1, v8, v3, v4}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    move/from16 v8, v27

    if-le v8, v1, :cond_a3

    move v8, v1

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    :cond_a3
    move-object/from16 v45, v5

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v5

    if-le v5, v13, :cond_a4

    const/4 v5, 0x2

    move v13, v5

    :cond_a4
    if-eqz v2, :cond_a7

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput-object v7, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    iget-object v5, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_a6

    if-ne v14, v12, :cond_a5

    goto :goto_3d

    :cond_a5
    move-object/from16 v5, v46

    goto :goto_3e

    :cond_a6
    :goto_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v1

    move-object/from16 v1, v42

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", due to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v46

    invoke-virtual {v10, v5, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_a7
    move/from16 v20, v1

    move-object/from16 v5, v46

    :goto_3e
    move v7, v8

    move v8, v13

    :goto_3f
    add-int/lit8 v1, v23, -0x1

    move-object/from16 v40, v6

    move v9, v14

    move/from16 v13, v29

    move-object/from16 v14, v42

    const/16 v4, 0x1f4

    move-object v6, v5

    move v5, v1

    goto/16 :goto_35

    :cond_a8
    move-wide/from16 v3, p5

    move/from16 v23, v5

    move-object v5, v6

    move/from16 v29, v13

    move-object/from16 v42, v14

    move-object/from16 v6, v40

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    move v8, v7

    :goto_40
    invoke-virtual {v15}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_af

    if-lez v0, :cond_ab

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string v2, "ext-provider"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_a9

    if-ne v14, v12, :cond_aa

    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise adj to external provider: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    move v13, v1

    :cond_ab
    const/4 v1, 0x6

    if-le v8, v1, :cond_ae

    const/4 v1, 0x6

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_ac

    if-ne v14, v12, :cond_ad

    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise procstate to external provider: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    move v2, v1

    move v1, v13

    goto :goto_41

    :cond_ae
    move v2, v8

    move v1, v13

    goto :goto_41

    :cond_af
    move v2, v8

    move v1, v13

    :goto_41
    add-int/lit8 v13, v29, -0x1

    move-object/from16 v40, v6

    move v9, v14

    move-object/from16 v14, v42

    const/16 v4, 0x1f4

    move-object v6, v5

    goto/16 :goto_33

    :cond_b0
    move-wide/from16 v3, p5

    move-object v5, v6

    move v14, v9

    move/from16 v29, v13

    const/16 v28, 0x3

    :goto_42
    iget-wide v6, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b4

    iget-wide v6, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v8, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v6, v8

    cmp-long v6, v6, v3

    if-lez v6, :cond_b4

    const/16 v6, 0x2bc

    if-le v0, v6, :cond_b2

    const/16 v0, 0x2bc

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    const-string/jumbo v6, "recent-provider"

    iput-object v6, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_b1

    if-ne v14, v12, :cond_b2

    :cond_b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise adj to recent provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    const/16 v6, 0xf

    if-le v2, v6, :cond_b4

    const/16 v2, 0xf

    const-string/jumbo v6, "recent-provider"

    iput-object v6, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_b3

    if-ne v14, v12, :cond_b4

    :cond_b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise procstate to recent provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    const/16 v5, 0x13

    if-lt v2, v5, :cond_b6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v5

    if-eqz v5, :cond_b5

    const/16 v2, 0x11

    const-string v5, "cch-client-act"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_43

    :cond_b5
    iget-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v5, :cond_b6

    const/16 v2, 0x10

    const-string v5, "cch-as-act"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_b6
    :goto_43
    const/16 v5, 0x1f4

    if-ne v0, v5, :cond_bc

    if-eqz p4, :cond_bb

    if-nez p7, :cond_bb

    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v6, v6, 0x3

    if-le v5, v6, :cond_b7

    const/4 v9, 0x1

    goto :goto_44

    :cond_b7
    const/4 v9, 0x0

    :goto_44
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iget-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v5, :cond_ba

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v5, :cond_b9

    iget-wide v5, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v7, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b8

    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v5, 0x0

    goto :goto_46

    :cond_b8
    const/4 v5, 0x1

    goto :goto_45

    :cond_b9
    const/4 v5, 0x1

    :goto_45
    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v6, v5

    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v5, 0x0

    goto :goto_46

    :cond_ba
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_46

    :cond_bb
    const/4 v5, 0x0

    :goto_46
    iget-boolean v6, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v6, :cond_bd

    const/16 v0, 0x320

    goto :goto_47

    :cond_bc
    const/4 v5, 0x0

    :cond_bd
    :goto_47
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v6, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, v6, :cond_be

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget v6, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v7, 0xfa

    if-gt v6, v7, :cond_be

    const/4 v1, 0x2

    :cond_be
    const/4 v6, 0x5

    if-lt v2, v6, :cond_bf

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c0

    if-le v1, v7, :cond_c0

    const/4 v1, 0x1

    goto :goto_48

    :cond_bf
    const/4 v7, 0x1

    :cond_c0
    :goto_48
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_c1

    or-int v26, v26, v38

    :cond_c1
    invoke-direct {v10, v11, v2}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v6

    or-int v6, v26, v6

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v8

    iput v8, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v6, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    move/from16 v8, v44

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    iget v9, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v9, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    move-object/from16 v9, p3

    invoke-static {v11, v9}, Lcom/android/server/am/OomAdjusterInjector;->setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    iget v13, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v15, v32

    if-lt v13, v15, :cond_c4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v13

    move/from16 v5, v31

    if-lt v13, v5, :cond_c3

    iget v13, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    move/from16 v7, v30

    if-eq v13, v7, :cond_c2

    goto :goto_49

    :cond_c2
    const/16 v25, 0x0

    goto :goto_4a

    :cond_c3
    move/from16 v7, v30

    goto :goto_49

    :cond_c4
    move/from16 v7, v30

    move/from16 v5, v31

    :goto_49
    const/16 v25, 0x1

    :goto_4a
    return v25
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x6

    return v0

    :cond_2
    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .locals 9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking proc ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] state changes: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    if-le v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v7

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    move v5, v6

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    nop

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-gt v0, v2, :cond_6

    move v5, v6

    :cond_6
    move v0, v5

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    :goto_1
    if-eqz v0, :cond_9

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, p2, v5

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_9

    :cond_8
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v5, 0x0

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_9

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v7, v1, v5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7, v8, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_a

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    :cond_a
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .locals 3

    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1

    return v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z
    .locals 35

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v11, v0, v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v9, -0x1

    move-wide/from16 v33, v12

    move v12, v0

    move v13, v1

    move-object v0, v6

    move v6, v5

    move v5, v4

    move v4, v15

    move v15, v3

    move v3, v14

    move v14, v2

    move-wide/from16 v1, v33

    :goto_0
    move-wide/from16 v16, v1

    const-string v1, "app.processName = "

    const-string v2, " app.pid = "

    move/from16 v19, v5

    const-string v5, "OomAdjuster"

    move/from16 v20, v9

    if-ltz v4, :cond_1c

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v9, v21

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    move/from16 v21, v4

    iget-boolean v4, v7, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v4, :cond_6

    iget v4, v9, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v23, v6

    const/16 v6, 0x320

    if-ne v4, v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_1
    if-ltz v4, :cond_4

    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v24, :cond_0

    move-object/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v3

    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceb = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " s = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sr.lastActivity = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v11

    move/from16 v27, v12

    iget-wide v11, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " packageName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " processName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v28, v1

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v11, v0

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-gez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_3

    const-string v0, "Not aged enough!!!"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-nez v0, :cond_2

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object v3, v9

    move-wide/from16 v16, v0

    move-object v0, v3

    goto :goto_4

    :cond_2
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v16

    if-gez v0, :cond_3

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object v3, v9

    move-wide/from16 v16, v0

    move-object v0, v3

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v0, v24

    :goto_4
    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v1, v28

    goto/16 :goto_1

    :cond_4
    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v11, v24

    goto :goto_6

    :cond_5
    move/from16 v26, v11

    move/from16 v27, v12

    goto :goto_5

    :cond_6
    move/from16 v23, v6

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_5
    move-object v11, v0

    move/from16 v25, v3

    :goto_6
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_7

    if-eqz v11, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1b

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1b

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    const/4 v12, 0x5

    move/from16 v18, v21

    move-wide/from16 v3, p1

    move/from16 v12, v19

    move-object/from16 v19, v8

    move/from16 v8, v23

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_7

    :cond_8
    move/from16 v12, v19

    move/from16 v18, v21

    move-object/from16 v19, v8

    move/from16 v8, v23

    :goto_7
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xd

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    const/16 v2, 0x13

    if-eq v0, v2, :cond_9

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_8

    :cond_9
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    const/4 v2, 0x6

    if-le v12, v0, :cond_a

    iget-wide v4, v9, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v0, v4, p5

    if-gez v0, :cond_a

    iput v2, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x1b7740

    add-long v4, p5, v4

    iget-wide v1, v9, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    :goto_8
    move v5, v12

    move/from16 v32, v26

    move/from16 v12, v27

    goto/16 :goto_12

    :cond_a
    add-int/lit8 v5, v12, 0x1

    if-le v5, v10, :cond_b

    iput v2, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x1

    invoke-virtual {v9, v0, v3, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_9

    :cond_b
    const/4 v4, 0x1

    :goto_9
    move/from16 v32, v26

    move/from16 v12, v27

    goto/16 :goto_12

    :cond_c
    const/4 v4, 0x1

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v0, v4

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v14, v14, 0x1

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v0, :cond_f

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v0, :cond_d

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v1, v27

    if-ne v1, v0, :cond_e

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_d
    move/from16 v1, v27

    :cond_e
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move v1, v0

    goto :goto_a

    :cond_f
    move/from16 v1, v27

    const/4 v0, 0x0

    move v1, v0

    move v13, v0

    :goto_a
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    if-eqz v0, :cond_10

    move/from16 v29, v1

    move/from16 v32, v26

    goto/16 :goto_11

    :cond_10
    sub-int v0, v14, v15

    move/from16 v4, v26

    if-le v0, v4, :cond_18

    move-object v0, v9

    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v23

    if-nez v23, :cond_17

    iget-boolean v6, v9, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v6, :cond_17

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v6, v6, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v3, v20, -0x1

    if-ge v6, v3, :cond_17

    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    :goto_b
    if-ltz v3, :cond_16

    if-nez v5, :cond_16

    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v27

    const/16 v22, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v33, v27

    move-object/from16 v27, v0

    move/from16 v0, v33

    :goto_c
    if-ltz v0, :cond_15

    if-nez v5, :cond_15

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move/from16 v29, v1

    move-object/from16 v1, v28

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v30, v2

    move/from16 v2, v28

    :goto_d
    if-ltz v2, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v31, v1

    move-object/from16 v1, v28

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_12

    if-eq v1, v9, :cond_12

    move/from16 v32, v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    move/from16 v28, v5

    const/16 v5, 0x10

    if-lt v4, v5, :cond_13

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x384

    if-ge v4, v5, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v4, v1

    const/4 v5, 0x1

    move-object/from16 v27, v4

    goto :goto_f

    :cond_12
    move/from16 v32, v4

    move/from16 v28, v5

    :cond_13
    :goto_e
    add-int/lit8 v2, v2, -0x1

    move/from16 v5, v28

    move-object/from16 v1, v31

    move/from16 v4, v32

    goto :goto_d

    :cond_14
    move-object/from16 v31, v1

    move/from16 v32, v4

    move/from16 v28, v5

    :goto_f
    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v4, v32

    const/16 v22, 0x1

    goto :goto_c

    :cond_15
    move/from16 v29, v1

    move-object/from16 v30, v2

    move/from16 v32, v4

    move/from16 v28, v5

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v27

    move/from16 v5, v28

    move/from16 v1, v29

    move/from16 v4, v32

    const/16 v2, 0x10

    goto/16 :goto_b

    :cond_16
    move/from16 v29, v1

    move/from16 v32, v4

    move/from16 v28, v5

    move/from16 v5, v28

    goto :goto_10

    :cond_17
    move/from16 v29, v1

    move/from16 v32, v4

    :goto_10
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->killReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached op#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; killed because of client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_11

    :cond_18
    move/from16 v29, v1

    move/from16 v32, v4

    :goto_11
    move v5, v12

    move/from16 v12, v29

    :goto_12
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_19

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_19

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v0, :cond_19

    const/4 v0, 0x7

    iput v0, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    const-string/jumbo v0, "isolated not needed"

    const/16 v1, 0x11

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v2, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_13

    :cond_19
    invoke-direct {v7, v9}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    :goto_13
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1a

    add-int/lit8 v6, v8, 0x1

    goto :goto_14

    :cond_1a
    move v6, v8

    goto :goto_14

    :cond_1b
    move/from16 v12, v19

    move/from16 v18, v21

    move/from16 v32, v26

    move/from16 v1, v27

    move-object/from16 v19, v8

    move/from16 v8, v23

    move v6, v8

    move v5, v12

    move v12, v1

    :goto_14
    add-int/lit8 v4, v18, -0x1

    move-object v0, v11

    move-wide/from16 v1, v16

    move-object/from16 v8, v19

    move/from16 v9, v20

    move/from16 v3, v25

    move/from16 v11, v32

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v28, v1

    move/from16 v18, v4

    move/from16 v32, v11

    move v1, v12

    move/from16 v12, v19

    move-object/from16 v19, v8

    move v8, v6

    iget v4, v7, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v3, v4, :cond_1e

    iget-object v4, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mAllowLowerMemLevel:Z

    const/4 v6, 0x1

    if-ne v6, v4, :cond_1e

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget v4, v7, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sub-int v4, v3, v4

    const/4 v6, 0x5

    mul-int/2addr v4, v6

    rem-int/lit8 v4, v4, 0x31

    rsub-int v4, v4, 0x3e7

    iput v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    :cond_1d
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v4, v6, v9}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v4, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is moved to higher adj"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v4, p7

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v14, v12, v8}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v2

    return v2
.end method

.method private updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    :cond_1
    iget v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    :cond_2
    return-void
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .locals 12

    move-object v9, p0

    move-object v10, p1

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v11, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v2, p4

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    if-eqz v11, :cond_9

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget-object v1, v1, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_8

    iget v2, v11, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget v2, v11, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v3, v11, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v2, v3, :cond_7

    iget-boolean v2, v11, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v3, p5

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    iget v3, v11, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2, v3, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    move-wide/from16 v3, p5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    goto :goto_3

    :cond_8
    move-wide/from16 v3, p5

    goto :goto_3

    :cond_9
    move-wide/from16 v3, p5

    :goto_3
    return v0
.end method

.method private updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v9, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_0

    move-object/from16 v12, p1

    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v0, 0x1b7740

    sub-long v15, v13, v0

    const/4 v5, 0x0

    const/16 v17, 0x1

    if-nez p3, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    move/from16 v18, v0

    move-object/from16 v0, p4

    if-eqz v18, :cond_2

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object/from16 v1, p3

    :goto_2
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v0, :cond_4

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    iget v10, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x40

    goto :goto_3

    :cond_3
    move-object v10, v0

    goto :goto_4

    :cond_4
    move-object v10, v0

    :goto_4
    invoke-virtual {v10}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    const-string v11, "ActivityManager"

    if-ltz v0, :cond_6

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_6
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    :cond_7
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v18, :cond_8

    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_8
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->clearImportantUids()V

    const/4 v0, 0x0

    if-nez v18, :cond_a

    if-eqz p5, :cond_9

    goto :goto_6

    :cond_9
    move v1, v5

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v1, v17

    :goto_7
    move/from16 v19, v1

    add-int/lit8 v1, v4, -0x1

    :goto_8
    if-ltz v1, :cond_c

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v3, v5, :cond_b

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    const/16 v5, 0x3e9

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    :cond_b
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v4, -0x1

    move/from16 v21, v0

    move v5, v1

    :goto_9
    if-ltz v5, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_d

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    const/16 v20, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v24, v3

    move-object/from16 v3, p2

    move/from16 v25, v4

    move/from16 v4, v18

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide v5, v13

    move-wide/from16 v27, v7

    move/from16 v7, v22

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v0, v24

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v21, v1

    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v0, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    move/from16 v21, v1

    goto :goto_a

    :cond_d
    move-object v0, v3

    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    :goto_a
    add-int/lit8 v5, v20, -0x1

    move/from16 v4, v25

    move-object/from16 v6, v26

    move-wide/from16 v7, v27

    goto :goto_9

    :cond_e
    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    if-eqz v19, :cond_15

    const/4 v0, 0x0

    :goto_b
    if-eqz v21, :cond_14

    const/16 v1, 0xa

    if-ge v0, v1, :cond_14

    add-int/lit8 v20, v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    move/from16 v8, v25

    if-ge v1, v8, :cond_10

    move-object/from16 v7, v26

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_f

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v3, :cond_f

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v26, v7

    move/from16 v25, v8

    goto :goto_c

    :cond_10
    move-object/from16 v7, v26

    const/4 v1, 0x0

    move/from16 v21, v0

    move v5, v1

    :goto_d
    if-ge v5, v8, :cond_13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_11

    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_11

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    const/4 v4, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v3, p2

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-wide v5, v13

    move-object/from16 v26, v7

    move/from16 v7, v22

    move/from16 v22, v8

    move/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v21, 0x1

    goto :goto_e

    :cond_11
    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v22, v8

    :cond_12
    :goto_e
    add-int/lit8 v5, v24, 0x1

    move/from16 v8, v22

    move-object/from16 v7, v26

    goto :goto_d

    :cond_13
    move/from16 v24, v5

    move-object/from16 v26, v7

    move/from16 v22, v8

    move/from16 v0, v20

    move/from16 v25, v22

    goto/16 :goto_b

    :cond_14
    move/from16 v22, v25

    goto :goto_f

    :cond_15
    move/from16 v22, v25

    :goto_f
    const/4 v8, 0x0

    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v27

    move-wide v5, v15

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v0

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v1, :cond_16

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_16
    if-eqz v0, :cond_17

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v2

    invoke-virtual {v1, v13, v14, v8, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    :cond_17
    move-wide/from16 v1, v27

    invoke-direct {v9, v10, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v13, v14}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did OOM ADJ in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-eqz p6, :cond_1a

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1a
    return-void
.end method

.method private updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_14

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_13

    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v5, v7, :cond_2

    iget v5, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v5, v7, :cond_2

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v7, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v5, v7, :cond_13

    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changes in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": proc state from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", capability from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", whitelist from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ActivityManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v5, :cond_6

    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v5, :cond_5

    :cond_4
    iput-wide p2, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v5, :cond_8

    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_7

    const/4 v4, 0x4

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    iput-boolean v7, v3, Lcom/android/server/am/UidRecord;->idle:Z

    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    :cond_8
    :goto_1
    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v8, 0xb

    if-le v5, v8, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    move v5, v7

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_a

    move v7, v2

    :cond_a
    if-ne v5, v7, :cond_b

    iget v8, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-ne v8, v6, :cond_d

    :cond_b
    if-eqz v7, :cond_c

    const/16 v6, 0x8

    goto :goto_3

    :cond_c
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v4, v6

    :cond_d
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    sget-boolean v8, Lcom/android/server/am/OomAdjuster;->sEnableFeatures:Z

    if-eqz v8, :cond_12

    iget v8, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x6

    if-gt v6, v8, :cond_e

    iget v9, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-gt v9, v8, :cond_f

    :cond_e
    if-le v6, v8, :cond_12

    iget v9, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-gt v9, v8, :cond_12

    :cond_f
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_10

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v11, v3, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v10, v11, :cond_10

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v6}, Landroid/app/IApplicationThread;->dispatchUidCurProcState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    goto :goto_4

    :cond_11
    goto :goto_5

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUidsLocked err, uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " err:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OomAdjuster"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_5
    iput v6, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    iget v8, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    iput v8, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v8, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v8, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v9, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget v10, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v9, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    iget v11, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v8, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    :cond_13
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(I)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_14
    :goto_6
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    add-int/lit8 v2, v1, -0x1

    :goto_7
    if-ltz v2, :cond_16

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    iget v4, v4, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->updateLastImportantUidsIfNeeded()V

    return-void
.end method


# virtual methods
.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method idleUidsLocked()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    add-int/lit8 v7, v0, -0x1

    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_6

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    cmp-long v13, v11, v8

    if-lez v13, :cond_5

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_5

    cmp-long v13, v11, v3

    if-gtz v13, :cond_3

    iget-object v8, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :cond_3
    cmp-long v8, v5, v8

    if-eqz v8, :cond_4

    cmp-long v8, v5, v11

    if-lez v8, :cond_5

    :cond_4
    move-wide v5, v11

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_7
    cmp-long v7, v5, v8

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method initSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    return-void
.end method

.method public synthetic lambda$new$1$OomAdjuster(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    const-string v6, " to "

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProcessGroup "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    invoke-static {v5, v0, v1, v7}, Landroid/os/Process;->setCgroupProcsProcessGroup(IIIZ)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v7, :cond_2

    const-string v7, "OomAdjuster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed setting process group of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v3, 0x1

    return v3

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_0

    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method setAttachingSchedGroupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v3, -0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "not expected top priority"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback pre-set sched group to default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OomAdjuster"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_0

    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsync(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-ge v0, v1, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x1

    if-eqz v11, :cond_15

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v13

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v7

    const/16 v0, 0x384

    const/16 v5, 0x3e9

    if-lt v7, v0, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    move v8, v4

    move/from16 v4, v16

    move v9, v6

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v1

    if-ne v15, v1, :cond_2

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_2

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v9, v1, :cond_2

    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    goto/16 :goto_9

    :cond_2
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Lcom/android/server/am/ActiveUids;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    const/4 v3, 0x0

    iput-boolean v13, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    move-object/from16 v4, p1

    move/from16 v16, v3

    :goto_1
    if-eqz v4, :cond_f

    if-eq v4, v11, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v3, :cond_4

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v3, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    invoke-virtual {v6, v3, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v13

    :goto_2
    if-ltz v3, :cond_a

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget v13, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_5

    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_5
    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_3
    if-eqz v13, :cond_9

    if-ne v13, v4, :cond_6

    move/from16 v21, v2

    move-object/from16 v22, v6

    goto :goto_4

    :cond_6
    move/from16 v21, v2

    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v2, v16, v2

    move/from16 v16, v2

    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v2, :cond_7

    move-object/from16 v22, v6

    goto :goto_4

    :cond_7
    iget v2, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v22, 0x80000a0

    and-int v2, v2, v22

    move-object/from16 v22, v6

    const/16 v6, 0x20

    if-ne v2, v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v13}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    goto :goto_4

    :cond_9
    move/from16 v21, v2

    move-object/from16 v22, v6

    :goto_4
    add-int/lit8 v3, v3, -0x1

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v13, 0x1

    goto :goto_2

    :cond_a
    move/from16 v21, v2

    move-object/from16 v22, v6

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_5
    if-ltz v2, :cond_e

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    iget-object v6, v3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d

    if-eq v6, v4, :cond_d

    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v8, v16, v8

    move/from16 v16, v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v16, v16, v8

    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_f
    move/from16 v21, v2

    move-object/from16 v22, v6

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    :goto_7
    if-ge v3, v4, :cond_10

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_10
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    move-object v5, v14

    move-object v6, v1

    move/from16 v23, v7

    move-object/from16 v7, v22

    const-wide/16 v19, 0x40

    move/from16 v8, v16

    move/from16 v24, v9

    move v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_8

    :cond_11
    move-object/from16 v17, v5

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_12

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    :cond_12
    :goto_8
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v3, 0x1

    return v3

    :cond_13
    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    :goto_9
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No oomadj changes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :cond_15
    :goto_a
    invoke-virtual {v10, v12}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .locals 10

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v8

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x384

    const/16 v9, 0x3e9

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v2

    if-ne v8, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_3

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_3
    return v1
.end method
