.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final KEEP_LEGACY_DIR:Z = false

.field private static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_PACKAGE_REMOVED:I = 0x6

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final MSG_REPORT_EVENT_TO_ALL_USERID:I = 0x4

.field static final MSG_UID_STATE_CHANGED:I = 0x3

.field static final MSG_UNLOCKED_USER:I = 0x5

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TOKEN_DELIMITER:C = '/'

.field private static final TWENTY_MINUTES:J = 0x124f80L

.field private static final USAGE_STATS_LEGACY_DIR:Ljava/io/File;


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReportedEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;>;"
        }
    .end annotation
.end field

.field mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field final mUsageReporters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUsageSource:I

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserUnlockedStates:Landroid/util/SparseBooleanArray;

.field final mVisibleActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$ActivityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    nop

    const-string v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/usage/UsageStatsService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/usage/UsageStatsService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldHideLocusIdEvents(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/usage/UsageStatsService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateNotificationEvents(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/usage/UsageStatsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->pruneUninstalledPackagesData(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/usage/UsageStatsService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->updatePackageMappingsData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/UsageStatsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->onPackageRemoved(ILjava/lang/String;)V

    return-void
.end method

.method private buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v1, v4

    invoke-static {v2, v3, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move usage stats file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    move-object v1, p0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create usage stats directory during migration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private deleteLegacyDir(I)V
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "UsageStatsService"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while attempting to delete legacy usage stats dir for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Error occurred while attempting to delete legacy usage stats dir"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getInstalledPackages(I)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method private getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch usage stats service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". The user might not have been initialized yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    :try_start_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    const-string v4, "UsageStatsService"

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to initialize service for stopped or removed user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialized unlocked user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    new-instance v4, Landroid/util/AtomicFile;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v6, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1
    invoke-virtual {p2, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v7

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UsageStatsService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method private migrateStatsToSystemCeIfNeededLocked(I)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "Usage stats directory does not exist: "

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v3, "migrated"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "UsageStatsService"

    if-eqz v3, :cond_5

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    const-string v6, "Failed to read migration status file, possibly corrupted."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string v2, "Unable to delete usage stats CE directory."

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting migration to system CE for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    :cond_6
    :try_start_5
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished migration to system CE for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V

    return-void

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v6

    :try_start_9
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v3

    const-string v4, "Failed to write migrated status file"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private onPackageRemoved(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v3, p2, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(Ljava/lang/String;J)I

    move-result v4

    move v1, v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJob(Landroid/content/Context;I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onUserUnlocked(I)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleUpdateMappingsJob(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, p1, v7, v8, v0}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;)V

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v7, "UsageStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted to unlock stopped or removed user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, v7, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v7, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v8

    const-string v9, "usagestats"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x2710

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "the specified user does not exist."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "the specified user is currently in a locked state."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    return v0

    :catch_0
    move-exception v0

    const-string v2, "invalid user specified."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private persistPendingEventsLocked(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "usagestats"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Usage stats DE directory does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingevents_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    invoke-static {v4, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v5

    :cond_3
    :goto_4
    return-void
.end method

.method private pruneUninstalledPackagesData(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readUsageSourceSetting()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x124f80

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldHideLocusIdEvents(II)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :cond_0
    return v1
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldObfuscateNotificationEvents(II)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updatePackageMappingsData()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v3, :cond_1

    monitor-exit v2

    return v0

    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz v2, :cond_16

    const/4 v8, 0x0

    move v9, v8

    move v8, v5

    move v5, v0

    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_17

    aget-object v10, v2, v9

    const-string v0, "--checkin"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto/16 :goto_8

    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v8, v0

    goto/16 :goto_8

    :cond_1
    const-string v0, "flush"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    const-string v0, "Flushed stats to disk"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v0, "is-app-standby-enabled"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_3
    const-string v0, "apptimelimit"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    add-int/lit8 v0, v9, 0x1

    :try_start_2
    array-length v12, v2

    if-lt v0, v12, :cond_4

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v9, 0x1

    array-length v7, v2

    invoke-static {v2, v0, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v7, v0, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_1
    monitor-exit v11

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, -0x2710

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v0, v3, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v12, v0

    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    add-int/lit8 v0, v9, 0x1

    :try_start_3
    array-length v14, v2

    if-lt v0, v14, :cond_8

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v0, :cond_7

    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    iget-object v15, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_3

    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/UserUsageStatsService;

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v15}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    goto :goto_4

    :cond_8
    invoke-direct {v1, v2, v9, v12}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    if-eq v0, v11, :cond_9

    add-int/lit8 v7, v9, 0x2

    array-length v11, v2

    invoke-static {v2, v7, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v12, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    :cond_9
    :goto_4
    monitor-exit v13

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_a
    const-string v0, "database-info"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    add-int/lit8 v0, v9, 0x1

    :try_start_4
    array-length v13, v2

    if-lt v0, v13, :cond_d

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v0, :cond_c

    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_6

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "user="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v14, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    goto :goto_7

    :cond_d
    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    if-eq v0, v11, :cond_e

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_e
    :goto_7
    monitor-exit v12

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_f
    const-string v0, "appstandby"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_10
    const-string v0, "stats-directory"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_5
    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    if-eq v0, v11, :cond_11

    new-instance v11, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v13

    const-string v14, "usagestats"

    invoke-direct {v11, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    monitor-exit v12

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :cond_12
    const-string v0, "mappings"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v12

    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    if-eq v12, v11, :cond_13

    :try_start_6
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v0, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_13
    monitor-exit v13

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :cond_14
    if-eqz v10, :cond_15

    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_16
    move v8, v5

    move v5, v0

    :cond_17
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v9, v0, [I

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v0, :cond_1a

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    aput v11, v9, v10

    const-string v12, "user"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_19

    if-eqz v5, :cond_18

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v12, v4}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_a

    :cond_18
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v12, v4, v6, v8}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_19
    :goto_a
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_1a
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v10, "Usage Source"

    iget v11, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v11}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v4, v9, v6}, Lcom/android/server/usage/AppStandbyInternal;->dumpUsers(Lcom/android/internal/util/IndentingPrintWriter;[ILjava/util/List;)V

    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1b
    return-void

    :catchall_6
    move-exception v0

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0
.end method

.method flushToDisk()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing procfs interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    :cond_1
    return-void
.end method

.method public onNewUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    return-void
.end method

.method public onStart()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v3}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    const-string v2, "usagestats"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(Landroid/content/pm/UserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public onStatsReloaded()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public onStatsUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStopUser(Landroid/content/pm/UserInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(Landroid/content/pm/UserInfo;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->userStopped()V

    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(Landroid/content/pm/UserInfo;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUnlockUser(Landroid/content/pm/UserInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUnlockUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method onUserRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJob(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelUpdateMappingsJob(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method prepareForPossibleShutdown()V
    .locals 4

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query configuration stats for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    move-object v3, v1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query event stats for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    move-object v3, v1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEvents(IJJI)Landroid/app/usage/UsageEvents;
    .locals 9

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query events for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    move-object v3, v1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 12

    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query package events for locked user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    return-object v4

    :cond_1
    move-object v5, v0

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v4

    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query usage stats for locked user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    return-object v4

    :cond_1
    move-object v5, v0

    move v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    monitor-exit v3

    return-object v4

    :cond_2
    if-eqz p7, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    return-void
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    return-void
.end method

.method registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 12

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    nop

    :goto_0
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v3, v2

    iput v3, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report event for locked user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " eventType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instanceId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_2
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v5, 0x10d

    if-eq v4, v2, :cond_d

    if-eq v4, v1, :cond_a

    const/16 v2, 0x17

    if-eq v4, v2, :cond_4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_3

    goto/16 :goto_7

    :cond_3
    iput v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    :cond_4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v2, :cond_5

    monitor-exit v3

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_7

    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v9, v7}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_5
    const-string v9, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to stop usage for during reporter death: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :cond_7
    :goto_3
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v4, :cond_8

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$600(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$700(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    :try_start_7
    iget v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    if-eq v4, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    nop

    :goto_4
    goto/16 :goto_7

    :catch_1
    move-exception v1

    :try_start_8
    const-string v4, "UsageStatsService"

    const-string v6, "Failed to note usage stop"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :cond_a
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v2, :cond_b

    const-string v4, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected activity event reported! ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " instanceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$600(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$700(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    :cond_c
    :goto_5
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {v5, v0, v2, v4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    :cond_d
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {v5, v0, v4, v6, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    new-instance v5, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    if-eq v2, v1, :cond_f

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V

    goto :goto_6

    :cond_f
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    nop

    :goto_6
    goto :goto_7

    :catch_2
    move-exception v1

    :try_start_c
    const-string v2, "UsageStatsService"

    const-string v4, "Failed to note usage start"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_7
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_10

    monitor-exit v3

    return-void

    :cond_10
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v1, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    return-void

    :catchall_2
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v1
.end method

.method reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shutdown()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method unregisterAppUsageLimitObserver(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    return-void
.end method

.method unregisterAppUsageObserver(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    return-void
.end method

.method unregisterUsageSessionObserver(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    return-void
.end method
