.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;,
        Lcom/android/server/pm/StagingManager$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mFailedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;

.field private final mFailureReasonFile:Ljava/io/File;

.field private mNativeFailureReason:Ljava/lang/String;

.field private final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mPi:Lcom/android/server/pm/PackageInstallerService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

.field private final mSessionRollbackIds:Landroid/util/SparseIntArray;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;-><init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void
.end method

.method private abortCheckpoint(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    :try_start_6
    const-string v3, "Failed to save failure reason: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    const-string v3, "StagingManager initiated"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_1
    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "Failed to abort checkpoint"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/StagingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v6

    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to abort apex session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "StagingManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downgrade of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed. Active version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    :cond_2
    return-void
.end method

.method private checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->isApkInApexInstallSuccess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install apk-in-apex of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed version of APEX package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match required. Active version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method private checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5

    const-string/jumbo v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "StagingManager"

    const-string v2, "Staged install failed due to unhandled exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged install failed due to unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Unable to get size of: "

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    nop

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v5, "StagingManager"

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v4}, Lcom/android/server/pm/StagingManager;->findAPKsInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-eqz p2, :cond_1

    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x40001

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1

    :cond_1
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_1
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9, v7}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    move v15, v10

    move v13, v9

    :goto_2
    if-ge v13, v15, :cond_4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v14, v9

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v9

    const/high16 v9, 0x10000000

    invoke-static {v11, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    move-object/from16 v16, v9

    if-nez v16, :cond_2

    const-wide/16 v9, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9

    :goto_3
    move-wide/from16 v17, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v17, v9

    if-ltz v9, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v19, 0x0

    move-object v9, v8

    move-object/from16 v21, v11

    move-wide/from16 v11, v19

    move/from16 v19, v13

    move-object/from16 v22, v14

    move-wide/from16 v13, v17

    move/from16 v20, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    add-int/lit8 v13, v19, 0x1

    move/from16 v15, v20

    goto :goto_2

    :cond_3
    move-object/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v22, v14

    move/from16 v20, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v8

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure to install APK staged session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Failed to create/write APK session"

    invoke-direct {v5, v3, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find staged APK in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "Attempting to install a staged APK session with no staging dir"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private ensureActiveApexSessionIsAborted(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v7, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0, v4}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
.end method

.method private extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    iget-object v9, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v9}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iput-boolean v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz p2, :cond_5

    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v6}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_6

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0, v7, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    :try_start_2
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionId(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v9, "StagingManager"

    const-string v10, "Failed to add a child session for installing the APK files"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to add a child session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    :cond_6
    return-object v4

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to prepare multi-package session for staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StagingManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Unable to prepare multi-package session for staged session"

    invoke-direct {v6, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_7
    return-object v2
.end method

.method private findAPKsInDir(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const-string v3, "StagingManager"

    if-eqz v2, :cond_1

    nop

    const-string/jumbo v2, "rollback"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v2

    :try_start_0
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4, v5}, Landroid/content/rollback/IRollbackManager;->notifyStagedApkSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notifyStagedApkSession for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getResult()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x1

    const-string v5, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure to install APK staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

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

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .locals 1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

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

.method private isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    return v1

    :cond_4
    const-string v0, "StagingManager"

    const-string v2, "Attempting to restore an invalid multi-package session."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic lambda$sessionContainsApex$0(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContainsApk$1(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private logFailedApexSessionsIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

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

.method private needsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    :goto_0
    return v0
.end method

.method private prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method private resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found pending staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " still to be verified, resuming pre-reboot verification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v2, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    return-void

    :cond_1
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reverting back to safe state. Marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_2
    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    nop

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "APEX activation failed. Check logcat messages from apexd for more information."

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session reverted due to crashing native process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_5
    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v3, :cond_8

    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_7
    const-string v3, "apexd did not know anything about a staged session supposed to be activated"

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "apexd did not know anything about a staged session supposed to be activated"

    invoke-direct {v4, v2, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_8
    :goto_0
    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APEX packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing APK packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionApplied()V

    if-eqz v0, :cond_b

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "StagingManager"

    const-string v4, "Checkpoint support unknown, marking session as successful immediately."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    :cond_b
    :goto_2
    return-void

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checkpoint support unknown. Aborting staged install for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StagingManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "Checkpoint support unknown. Aborting staged install."

    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "Checkpoint support unknown"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method private retrieveRollbackIdForCommitSession(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find rollback id for commit session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-interface/range {v0 .. v7}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StagingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .locals 19

    move-object/from16 v9, p1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    const-string v12, "StagingManager"

    if-nez v11, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for snapshotting/restoring user data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    if-eqz v13, :cond_1

    iget v14, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v15

    const/4 v0, 0x1

    move-object/from16 v8, p2

    invoke-virtual {v13, v8, v0}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v17

    invoke-static {v11, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v18

    const/4 v0, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move v4, v14

    move-wide v5, v15

    move-object/from16 v7, v18

    move v8, v0

    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v14

    move-wide v1, v15

    :cond_1
    return-void
.end method

.method private snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 12

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    nop

    const-string/jumbo v4, "rollback"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    iget-object v8, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v0, v6

    invoke-direct {v1, v7}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v7}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    move-object v5, v0

    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v0, v5, Landroid/apex/ApexSessionParams;->sessionId:I

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v5, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v0, v6, :cond_2

    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->isRollback:Z

    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {v1, v0}, Lcom/android/server/pm/StagingManager;->retrieveRollbackIdForCommitSession(I)I

    move-result v0

    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v9, :cond_3

    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    iget-object v0, v6, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v10, v0

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_8

    aget-object v12, v0, v11

    const/16 v13, 0x80

    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v15, Ljava/io/File;

    iget-object v7, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v15

    const/16 v15, 0x80

    invoke-virtual {v14, v7, v15, v4}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v4, v17

    invoke-static {v4, v12, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_6

    if-eqz v14, :cond_4

    :try_start_3
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    nop

    iget-object v4, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4, v7, v14}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/StagingManager;->checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V

    invoke-direct {v1, v2, v4, v15}, Lcom/android/server/pm/StagingManager;->checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to install new APEX package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "StagingManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "It is forbidden to install new APEX packages."

    const/4 v10, 0x1

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :try_start_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to generate package info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v0, v11, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v14, :cond_7

    :try_start_5
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v4
    :try_end_6
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse APEX package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v4, v10, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has following APEX packages: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StagingManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method private supportsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

.method private validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-string v0, "Failed to parse APEX package "

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v3

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v3}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK-container signature of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not compatible with the one currently installed on device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v4, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown apex package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v5

    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-direct {v1, v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    return-void
.end method


# virtual methods
.method abortCommittedSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 5

    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "StagingManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort applied session : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    const-string v4, "Session "

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has been abandoned already"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v1, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$200(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " aborted before pre-reboot verification completed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " because it is not active."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not contact apexd to abort staged session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    const/4 v1, 0x1

    return v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abortSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isCheckpointSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v4, v5, :cond_4

    const-string v4, "StagingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is already staged"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, -0x77

    if-nez v4, :cond_6

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v7

    if-ne v4, v7, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_6
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has been staged already by session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot stage session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with package name null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method commitSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    return-void
.end method

.method createSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$verifyApksInSession$2$StagingManager(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to verify APK staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1800(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    return-void
.end method

.method markStagedSessionsAsSuccessful()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    add-int/lit8 v1, v1, 0x1

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

.method onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V
    .locals 2

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result v0

    const-string v1, "StagingManager"

    if-nez v0, :cond_1

    const-string v0, "Failed to abort APEXd session"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 4

    move-object v0, p1

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    move-object v0, v2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    const-string v2, "Build fingerprint has changed"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 4

    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
