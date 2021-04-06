.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final mDataLoaderType:I

.field private mEnableRollbackCompleted:Z

.field private mIntegrityVerificationCompleted:Z

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field final mSessionId:I

.field private mVerificationCompleted:Z

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    nop

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ephemeral install of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    nop

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    iget-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILandroid/content/pm/PackageParser$SigningDetails;IJI)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$VerificationInfo;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "IJI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move/from16 v6, p5

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/InstallSource;

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    move/from16 v12, p13

    iput v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move/from16 v14, p15

    iput v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    move/from16 v15, p18

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 10

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v3

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v6

    :cond_0
    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/4 v5, -0x8

    if-nez v4, :cond_1

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but package is not installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v5

    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but actual installed version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v5

    :cond_2
    if-eqz v4, :cond_3

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    :try_start_1
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    monitor-exit v2

    return v6

    :cond_3
    :goto_0
    if-eqz v3, :cond_9

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    monitor-exit v2

    return v7

    :cond_4
    if-ne v1, v7, :cond_5

    monitor-exit v2

    return v7

    :cond_5
    if-ne v1, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_7

    monitor-exit v2

    return v6

    :cond_7
    monitor-exit v2

    return v7

    :cond_8
    const/4 v5, -0x4

    monitor-exit v2

    return v5

    :cond_9
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method


# virtual methods
.method handleIntegrityVerificationFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    :cond_0
    return-void
.end method

.method handleReturnCode()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const-string v0, ""

    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    const-string v3, "PackageManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse package at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v0, v2, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const-string v5, "Dry run"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v0, v4, v5, v6}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    :cond_3
    return-void
.end method

.method handleRollbackEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    return-void
.end method

.method public handleStartCopy()V
    .locals 27

    move-object/from16 v1, p0

    const/4 v0, 0x1

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/pm/PmInjector;->isPkgForegroundOrHaveDependency(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v0, -0x73

    move v7, v0

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const-string v8, "PackageManager"

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgLite for install: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v9, -0x6

    const/4 v10, -0x1

    if-nez v0, :cond_7

    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v10, :cond_7

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v11

    nop

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-ltz v0, :cond_6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v17, 0x0

    add-long v18, v14, v12

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v3, v4, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "Failed to free cache"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v9, :cond_7

    const/4 v3, -0x1

    iput v3, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :cond_7
    const/4 v3, 0x1

    if-ne v7, v3, :cond_13

    iget v0, v6, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x3

    if-ne v0, v3, :cond_8

    const/16 v7, -0x13

    goto :goto_5

    :cond_8
    const/4 v3, -0x4

    if-ne v0, v3, :cond_9

    const/4 v7, -0x1

    goto :goto_5

    :cond_9
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    const/4 v7, -0x4

    goto :goto_5

    :cond_a
    const/4 v3, -0x2

    if-ne v0, v3, :cond_b

    const/4 v7, -0x2

    goto :goto_5

    :cond_b
    if-ne v0, v9, :cond_c

    const/4 v7, -0x3

    goto :goto_5

    :cond_c
    const/4 v3, -0x5

    if-ne v0, v3, :cond_d

    const/16 v7, -0x14

    goto :goto_5

    :cond_d
    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    const/4 v3, -0x7

    if-ne v0, v3, :cond_e

    const/16 v7, -0x19

    goto :goto_5

    :cond_e
    const/4 v3, -0x8

    if-ne v0, v3, :cond_f

    const/16 v7, -0x79

    goto :goto_5

    :cond_f
    if-nez v2, :cond_13

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    :cond_10
    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_11

    const-string v3, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    :cond_12
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    :cond_13
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    if-eqz v6, :cond_14

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/OpCompatibilityInjector;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    :cond_14
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-ne v7, v3, :cond_16

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2708(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_15

    new-instance v4, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v6, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    invoke-virtual {v1, v3, v6, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_15
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v8, 0x40000

    and-int/2addr v4, v8

    if-eqz v4, :cond_16

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    const-wide/32 v8, 0x40000

    const-string v10, "enable_rollback"

    invoke-static {v8, v9, v10, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    const-string v10, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v20, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v10, v1, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, "android.permission.PACKAGE_ROLLBACK_AGENT"

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    move-object/from16 v22, v10

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    :cond_16
    iput v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method handleVerificationFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleReturnCode$0$PackageManagerService$InstallParams(JLjava/lang/String;I)Z
    .locals 2

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    return-void

    :cond_0
    move-object/from16 v4, p3

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x50000001

    const v6, 0x50000001

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    const-string v8, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    const-string v6, "android"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v17

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v14

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v11, 0x0

    const-string/jumbo v12, "integrity component"

    move-object/from16 v7, v17

    move-wide v9, v14

    invoke-interface/range {v7 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v13}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v3

    move-object/from16 v21, v13

    move-object/from16 v13, v16

    move-wide/from16 v22, v14

    move/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v6, 0x40000

    const-string/jumbo v8, "integrity_verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    return-void
.end method

.method sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v7, -0x1

    const/high16 v8, 0x10000000

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_0
    move v15, v6

    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_1
    move v14, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_2
    move v13, v7

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v6, v2, v7, v9, v13}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;III)Z

    move-result v17

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    const/4 v7, 0x4

    const/4 v9, 0x1

    if-ne v6, v7, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    move/from16 v18, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v6, v9

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    move/from16 v19, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_f

    if-eqz v17, :cond_f

    if-eqz v19, :cond_7

    if-nez v18, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v20, v4

    move/from16 v29, v13

    move/from16 v36, v14

    move/from16 v37, v15

    goto/16 :goto_b

    :cond_7
    :goto_5
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    invoke-virtual {v11, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v23, 0x0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    const/16 v25, 0x0

    const-string v22, "application/vnd.android.package-archive"

    move-object/from16 v20, v6

    move-object/from16 v21, v11

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v10

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    const-string v7, "PackageManager"

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " verifiers for intent "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " optional verifiers"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v11, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v8, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v8, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v11, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v8

    const-string v6, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v11, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v2, v10, v3}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v9

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v28

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v16, v13

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v12

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    const-string v2, "Additional verifiers required, but none installed."

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x16

    move v4, v2

    move-object/from16 v23, v9

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v6, :cond_a

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const-string/jumbo v27, "package verifier"

    move-object/from16 v20, v28

    move-wide/from16 v23, v12

    invoke-interface/range {v20 .. v27}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    move/from16 v20, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move/from16 v21, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v7

    const/4 v7, 0x0

    move-object/from16 v23, v9

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v4, v5, v7, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v20

    move/from16 v6, v21

    move-object/from16 v9, v23

    goto :goto_6

    :cond_a
    move/from16 v20, v4

    move/from16 v21, v6

    move-object/from16 v23, v9

    goto :goto_7

    :cond_b
    move/from16 v20, v4

    move-object/from16 v23, v9

    :goto_7
    move/from16 v4, v20

    :goto_8
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_d

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v6, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v33, 0x0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v34

    const/16 v35, 0x0

    const-string v32, "application/vnd.android.package-archive"

    move-object/from16 v30, v6

    move-object/from16 v31, v2

    invoke-static/range {v30 .. v35}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v9

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v30, v4

    const-string v4, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v6, v2, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v31, v8

    move-object v4, v11

    move-wide/from16 v34, v12

    move/from16 v36, v14

    move/from16 v33, v15

    move/from16 v29, v16

    move-object/from16 v32, v23

    const/4 v14, 0x0

    move-object v15, v10

    goto :goto_9

    :cond_c
    move/from16 v30, v4

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$InstallParams$3;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$3;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v25, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v26, v7

    move-object v7, v2

    move-object/from16 v31, v8

    move-object v8, v5

    move-object/from16 v32, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v25

    move/from16 v33, v15

    move-object v15, v10

    move-object v10, v4

    move-object v4, v11

    move-object/from16 v11, v20

    move-wide/from16 v34, v12

    const/4 v13, 0x0

    move/from16 v12, v21

    move/from16 v29, v16

    move-object/from16 v13, v22

    move/from16 v36, v14

    move-object/from16 v14, v24

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_9

    :cond_d
    move/from16 v30, v4

    move-object/from16 v31, v8

    move-object v4, v11

    move-wide/from16 v34, v12

    move/from16 v36, v14

    move/from16 v33, v15

    move/from16 v29, v16

    move-object/from16 v32, v23

    const/4 v14, 0x0

    move-object v15, v10

    :goto_9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v6, v15}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const-string/jumbo v27, "package verifier"

    move-object/from16 v20, v28

    move-object/from16 v22, v6

    move-wide/from16 v23, v34

    invoke-interface/range {v20 .. v27}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual/range {v31 .. v31}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$4;

    invoke-direct {v12, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$4;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v9, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v7, v4

    move-object v8, v5

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v37, v33

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v6, 0x40000

    const-string/jumbo v8, "verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_a

    :cond_e
    move-object/from16 v22, v15

    move/from16 v37, v33

    :goto_a
    move/from16 v4, v30

    move/from16 v2, v37

    goto :goto_c

    :cond_f
    move/from16 v20, v4

    move/from16 v29, v13

    move/from16 v36, v14

    move/from16 v37, v15

    :goto_b
    move/from16 v2, v37

    invoke-virtual {v3, v2, v9}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move/from16 v4, v20

    :goto_c
    return v4
.end method

.method setReturnCode(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
