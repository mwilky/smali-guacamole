.class public Lcom/android/server/pm/PermissionPmInjector;
.super Ljava/lang/Object;
.source "PermissionPmInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final WHITELISTPACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/pm/PermissionPmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    const-string v0, "com.google.android.syncadapters.contacts"

    const-string v1, "com.oneplus.cloud"

    const-string/jumbo v2, "net.oneplus.weather"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionPmInjector;->WHITELISTPACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initInstance(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/PackageManagerService$PmsInner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$PmsInner;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string v1, "initInstance PermissionPmInjector"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/pm/PermissionPmInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    sput-object p2, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    sput-object p3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    return-void
.end method

.method public static mayClearFlagsForLegacyApp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PermissionPmInjector;->shouldDropPermissionReviewFlagForLegacyApps(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]Clearing permission flags for legacy app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and perm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p2, p2, -0x41

    :cond_2
    return p2

    :cond_3
    :goto_0
    return p2
.end method

.method public static resetApplicationPermissions(I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetApplicationPermissions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PmsInner;->resetAllRuntimePermissions(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static resetPackagePermissionState(Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION_CONTROL_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "key_pkg_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception while resetting package permission state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static shouldDropPermissionReviewFlagForLegacyApps(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
