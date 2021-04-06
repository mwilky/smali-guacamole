.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field private static final NAME:Ljava/lang/String; = "rollback-observer"

.field private static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastStagedRollbackIdsFile:Ljava/io/File;

.field private final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackPackageHealthObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "rollback-observer"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "last-staged-rollback-ids"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method private getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .locals 7

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/VersionedPackage;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    if-ne p2, v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    nop

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p2, p4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V

    const/4 v6, 0x4

    invoke-static {p4, v6, v8, v7}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    invoke-static {p4, v6, v8, v7}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isPendingStagedSessionsEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "Rollback staged install"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private isModule(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p1, v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :catch_0
    move-exception v4

    return v3
.end method

.method private isPendingStagedSessionsEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$rollbackPackage$2(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    return-void
.end method

.method private listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;
    .locals 3

    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method

.method private markStagedSessionHandled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBootCompleted()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog;->scheduleCheckAndMitigateNativeCrashes()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackIds()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private popLastStagedRollbackIds()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method static readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, ""

    array-length v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    aget-object v6, v2, v7

    move-object v5, v6

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method private rollbackAll()V
    .locals 7

    const-string v0, "RollbackPackageHealthObserver"

    const-string v1, "Rolling back all available rollbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/rollback/RollbackManager;

    invoke-static/range {p3 .. p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->mapFailureReasonToMetric(I)I

    move-result v10

    const/4 v0, 0x1

    move/from16 v11, p3

    if-ne v11, v0, :cond_0

    const-string v1, "sys.init.updatable_crashing_process_name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isModule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v1

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object v13, v1

    :goto_1
    move-object v14, v13

    invoke-static {v14, v0, v10, v12}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    new-instance v15, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v6, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v14

    move v5, v10

    move/from16 v16, v10

    move-object v10, v6

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V

    invoke-direct {v15, v10}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    move-object v0, v15

    iget-object v1, v7, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;

    move-object/from16 v3, p1

    invoke-direct {v2, v9, v3, v8, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;-><init>(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method static writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "RollbackPackageHealthObserver"

    const-string v2, "Failed to save last staged rollback id"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAll()V

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected rollback but no valid rollback found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RollbackPackageHealthObserver"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "rollback-observer"

    return-object v0
.end method

.method public synthetic lambda$onBootCompletedAsync$0$RollbackPackageHealthObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method public synthetic lambda$rollbackPackage$1$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-direct {p0, p2, v1, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    const/4 v1, 0x2

    invoke-static {p3, v1, p4, p5}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    :cond_2
    const/4 v1, 0x3

    invoke-static {p3, v1, p4, p5}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBootCompletedAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$pi_OhdsKzJHdXoHHtYauaWDdX5A;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$pi_OhdsKzJHdXoHHtYauaWDdX5A;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v0
.end method

.method public startObservingHealth(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    return-void
.end method
