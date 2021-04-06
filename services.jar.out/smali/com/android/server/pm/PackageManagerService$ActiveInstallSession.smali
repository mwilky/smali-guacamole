.class Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveInstallSession"
.end annotation


# instance fields
.field private final mInstallSource:Lcom/android/server/pm/InstallSource;

.field private final mInstallerUid:I

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionId:I

.field private final mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mStagedDir:Ljava/io/File;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;ILandroid/content/pm/PackageInstaller$SessionParams;ILcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-void
.end method


# virtual methods
.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object v0
.end method

.method public getInstallerUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    return v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    return v0
.end method

.method public getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getStagedDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
