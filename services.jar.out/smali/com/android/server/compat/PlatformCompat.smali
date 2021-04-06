.class public Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "PlatformCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Compatibility"

.field private static sMaxTargetSdk:I

.field private static sMinTargetSdk:I


# instance fields
.field private final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    sput v0, Lcom/android/server/compat/PlatformCompat;->sMinTargetSdk:I

    const/16 v0, 0x1d

    sput v0, Lcom/android/server/compat/PlatformCompat;->sMaxTargetSdk:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/compat/CompatConfig;->create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method private checkCompatChangeLogPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot log compat change usage"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCompatChangeOverridePermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override compat change"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCompatChangeReadAndLogPermission()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    return-void
.end method

.method private checkCompatChangeReadPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot read compat change"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableAfterTargetSdk()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableAfterTargetSdk()I

    move-result v0

    sget v2, Lcom/android/server/compat/PlatformCompat;->sMinTargetSdk:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableAfterTargetSdk()I

    move-result v0

    sget v2, Lcom/android/server/compat/PlatformCompat;->sMaxTargetSdk:I

    if-le v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private killPackage(Ljava/lang/String;)V
    .locals 4

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    const-string v1, "Compatibility"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "PlatformCompat overrides"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private killUid(IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static synthetic lambda$listUIChanges$1(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 1

    new-array v0, p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object v0
.end method

.method private reportChange(JII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJI)V

    return-void
.end method


# virtual methods
.method public clearOverride(JLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return v0
.end method

.method public clearOverrides(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public clearOverridesForTest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public disableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->disableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "platform_compat"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/compat/CompatConfig;->dumpConfig(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->enableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return v0
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    return-object v0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v0

    return-object v0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    invoke-direct {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method public isChangeEnabledByUid(JI)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    move v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/compat/PlatformCompat;->reportChange(JII)V

    return v1

    :cond_0
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/compat/PlatformCompat;->reportChange(JII)V

    const/4 v0, 0x0

    return v0
.end method

.method public isKnownChangeId(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$listUIChanges$0$PlatformCompat(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z

    move-result v0

    return v0
.end method

.method public listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/-$$Lambda$PlatformCompat$AtVEv4aAuZbcSh4W8E3Qv4I8wOY;

    invoke-direct {v1, p0}, Lcom/android/server/compat/-$$Lambda$PlatformCompat$AtVEv4aAuZbcSh4W8E3Qv4I8wOY;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;->INSTANCE:Lcom/android/server/compat/-$$Lambda$PlatformCompat$5Wel5CZ9QNn2JE3j94F2PvQy404;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object v0
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    move-result v0

    return v0
.end method

.method public reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/compat/PlatformCompat;->reportChange(JII)V

    return-void
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    invoke-direct {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public reportChangeByUid(JI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->reportChange(JII)V

    return-void
.end method

.method public resetReporting(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/ChangeReporter;->resetReportedChanges(I)V

    return-void
.end method

.method public setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->addOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->addOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    return-void
.end method
