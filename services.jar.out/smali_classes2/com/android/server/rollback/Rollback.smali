.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private mApkSessionId:I

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field public final mInstallerPackageName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNumPackageSessionsWithSuccess:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private final mStagedSessionId:I

.field private mState:I

.field private mTimestamp:Ljava/time/Instant;

.field public final mUserId:I


# direct methods
.method constructor <init>(ILjava/io/File;IILjava/lang/String;)V
    .locals 8

    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 11

    move-object v0, p0

    move v1, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    new-instance v4, Landroid/content/rollback/RollbackInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, -0x1

    move-object v5, v4

    move v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    move v2, p4

    iput v2, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object v5, p2

    iput-object v5, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    iput v1, v0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    iput v3, v0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    goto :goto_1

    :cond_1
    new-array v3, v3, [I

    :goto_1
    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p7

    check-cast v3, Landroid/util/SparseIntArray;

    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    iput p4, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    iput p6, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p10

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    return-void
.end method

.method private containsApex()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58e10884

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x2bbe7537

    if-eq v0, v1, :cond_2

    const v1, 0x61e1ed80

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    return v0

    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    return v4

    :cond_6
    return v3
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "committed"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string v0, "available"

    return-object v0

    :cond_2
    const-string v0, "enabling"

    return-object v0
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const-string v5, "Rollback unavailable"

    invoke-static {v2, v3, v0, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    monitor-exit v4

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v6, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    :cond_1
    :try_start_1
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v6, 0x0

    move-object/from16 v7, p3

    invoke-virtual {v2, v7, v6, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v8, v0

    nop

    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v9, v0

    :try_start_3
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v10, v0

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v11, v0

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_0

    :cond_3
    new-instance v15, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v15, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    nop

    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v15, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    nop

    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    move-object/from16 v16, v6

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    :cond_6
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    :cond_7
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v17

    nop

    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backup copy of package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is inaccessible"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :cond_8
    :try_start_5
    array-length v7, v6

    move-object/from16 v24, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_b

    aget-object v18, v6, v0

    move-object/from16 v25, v18

    move-object/from16 v26, v6

    const/high16 v6, 0x10000000

    move/from16 v27, v7

    move-object/from16 v7, v25

    invoke-static {v7, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v28, v18

    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, 0x0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v21

    move-object/from16 v23, v6

    invoke-virtual/range {v17 .. v23}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    nop

    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v26

    move/from16 v7, v27

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v18, v7

    move-object v7, v0

    if-eqz v6, :cond_a

    :try_start_b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v19, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move-object v6, v0

    :try_start_c
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    move-object/from16 v19, v6

    :goto_2
    throw v7

    :cond_b
    move-object/from16 v26, v6

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    move-object/from16 v7, p3

    move-object/from16 v0, v24

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v5, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v6, p2

    :try_start_d
    invoke-direct {v5, v1, v2, v3, v6}, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-direct {v0, v5}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    const/4 v5, 0x3

    iput v5, v1, Lcom/android/server/rollback/Rollback;->mState:I

    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-virtual {v0}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v6, p2

    :goto_3
    :try_start_e
    const-string v5, "RollbackManager"

    const-string v7, "Rollback failed"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    :goto_4
    monitor-exit v4

    return-void

    :catch_2
    move-exception v0

    move-object/from16 v6, p2

    const-string v5, "Invalid callerPackageName"

    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    monitor-exit v4

    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v6, p2

    :goto_5
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

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

.method containsSessionId(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Landroid/util/IntArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    :cond_3
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/rollback/Rollback;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-stagedSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v1, "-packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "-causePackages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-committedSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "-extensionVersions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    const/4 v4, 0x0

    move-object/from16 v5, p7

    :try_start_0
    invoke-static {v1, v2, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, v3

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v7, v3, v6

    invoke-static {v1, v2, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v14, p2

    invoke-direct {v8, v2, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v12, p4

    invoke-direct {v9, v2, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Landroid/util/IntArray;

    invoke-direct {v10}, Landroid/util/IntArray;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    new-instance v16, Landroid/util/SparseLongArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseLongArray;-><init>()V

    move-object v7, v0

    move/from16 v12, p6

    move v13, v4

    move-object v14, v6

    move-object/from16 v15, v16

    move/from16 v16, p9

    invoke-direct/range {v7 .. v16}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZZLandroid/util/IntArray;Landroid/util/SparseLongArray;I)V

    move-object v6, v0

    iget-object v7, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to copy package for rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .locals 11

    new-instance v10, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    new-instance v8, Landroid/util/SparseLongArray;

    invoke-direct {v8}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v10

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZZLandroid/util/IntArray;Landroid/util/SparseLongArray;I)V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getApexPackageNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getApkSessionId()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBackupDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStagedSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v1}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTimestamp()Ljava/time/Instant;
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCommitted()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDeleted()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isEnabling()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRestoreUserDataInProgress()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isStaged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$commit$0$Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    :cond_1
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    nop

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method makeAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RollbackManager"

    const-string v2, "Cannot make deleted rollback available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifySessionWithSuccess()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v3, v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    monitor-exit v3

    return v4

    :cond_0
    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, p1

    :try_start_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    :goto_1
    if-ge v4, v6, :cond_1

    aget v10, v2, v4

    iget-object v7, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    move-object/from16 v7, p5

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v7

    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    move-object v13, p1

    :cond_4
    :goto_2
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    move-object v13, p1

    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method saveRollback()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setApkSessionId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setRestoreUserDataInProgress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {p3, v1, v2, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-static {p2}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
