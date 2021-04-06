.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$LocalService;,
        Lcom/android/server/location/LocationManagerService$UpdateRecord;,
        Lcom/android/server/location/LocationManagerService$Receiver;,
        Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$LocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationService"

.field public static D:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FASTEST_COARSE_INTERVAL_MS:J = 0x927c0L

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOG_SHIELD:Ljava/lang/String; = "XXX"

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field public static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"


# instance fields
.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private mBatterySaverMode:I

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExtraLocationControllerPackage:Ljava/lang/String;

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/LocationManagerService$LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;

.field private final mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V
    .locals 4

    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    const-string v1, "LocationService"

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const-class v2, Landroid/location/LocationManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/location/AppOpsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    new-instance v1, Lcom/android/server/location/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v1, Lcom/android/server/location/AppForegroundHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v1, Lcom/android/server/location/LocationUsageLogger;

    invoke-direct {v1}, Lcom/android/server/location/LocationUsageLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    new-instance v1, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    new-instance v1, Lcom/android/server/location/PassiveProvider;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->getInstance(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationUsageLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemThirdPartyAppsCanStart()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/LocationManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPackageDisappeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onScreenStateChanged()V

    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/location/ProviderRequest$Builder;

    invoke-direct {v3}, Lcom/android/internal/location/ProviderRequest$Builder;-><init>()V

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget v7, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    iget v8, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v11, 0x4

    if-ne v8, v11, :cond_1

    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    invoke-virtual {v3, v10}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v13, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v13, v13, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v15, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v14

    if-nez v14, :cond_2

    move/from16 v16, v11

    goto/16 :goto_6

    :cond_2
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v14, v13}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v14

    if-nez v14, :cond_3

    move/from16 v16, v11

    goto/16 :goto_6

    :cond_3
    if-nez v8, :cond_5

    if-eqz v7, :cond_4

    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    move v14, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v14, v10

    :goto_4
    iget v15, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v15}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v3, v10}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    invoke-virtual {v3, v9}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    :cond_7
    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v15

    move/from16 v16, v11

    invoke-virtual {v15}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->isLocationSettingsIgnored()Z

    move-result v17

    if-nez v17, :cond_9

    iget-object v9, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_8
    invoke-virtual {v15}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v18

    cmp-long v9, v10, v18

    if-eqz v9, :cond_9

    new-instance v9, Landroid/location/LocationRequest;

    invoke-direct {v9, v15}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v15, v9

    invoke-virtual {v15, v10, v11}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    :cond_9
    iput-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v17

    cmp-long v17, v10, v17

    if-gez v17, :cond_c

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/location/ProviderRequest$Builder;->setInterval(J)Lcom/android/internal/location/ProviderRequest$Builder;

    goto :goto_6

    :cond_b
    move/from16 v16, v11

    :cond_c
    :goto_6
    add-int/lit8 v11, v16, 0x1

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_d
    move/from16 v16, v11

    invoke-virtual {v3, v6}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationRequests(Ljava/util/List;)Lcom/android/internal/location/ProviderRequest$Builder;

    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v9, v9, v11

    if-gez v9, :cond_11

    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v14, v14, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getLocationRequests()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-gtz v14, :cond_10

    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v14, :cond_f

    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v14}, Lcom/android/server/location/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v14, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_8

    :cond_f
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v0, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v0}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->build()Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    :cond_0
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;
    .locals 5

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    if-nez p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    :cond_0
    iget v1, p2, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    :cond_2
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    :cond_3
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    :cond_4
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    :cond_5
    return-object v0
.end method

.method private getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerService$Receiver;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v9, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v0, v9

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .locals 11

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v10, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v1, v10

    nop

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "LocationManagerService"

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received location from unknown provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    if-eq v1, v2, :cond_1

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->updateLocation(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p2

    :goto_0
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_2

    const-string v2, "incoming location: XXX"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/LocationManagerService;->mdmCheckIfLossSv(J)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSaveOnLocationChanged(Ljava/lang/String;J)Z

    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_12

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v11, v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v12, v11, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    const/4 v13, 0x0

    iget v14, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v14}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v14

    if-nez v14, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v15, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v12, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v15, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v10, v12, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v10}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_3

    :cond_7
    iget v10, v12, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    const/4 v14, 0x1

    if-eq v10, v14, :cond_9

    const/4 v14, 0x2

    if-ne v10, v14, :cond_8

    move-object/from16 v10, p2

    goto :goto_2

    :cond_8
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_9
    move-object/from16 v10, p3

    nop

    :goto_2
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v14

    invoke-static {v10, v14, v9, v2, v3}, Lcom/android/server/location/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;J)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-static {v9, v10}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3502(Lcom/android/server/location/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v15, v11, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v14, v15}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v11, v10}, Lcom/android/server/location/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v13, 0x1

    :cond_b
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    :cond_c
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v14

    if-lez v14, :cond_d

    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v14

    cmp-long v14, v14, v2

    if-gez v14, :cond_f

    :cond_d
    iget-object v14, v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v14}, Lcom/android/server/location/LocationManagerService$Receiver;->callRemovedLocked()V

    if-nez v7, :cond_e

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v14

    :cond_e
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v13, :cond_11

    if-nez v6, :cond_10

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    :cond_10
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    goto :goto_4

    :cond_13
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    goto :goto_5

    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    :cond_15
    return-void

    :cond_16
    :goto_6
    return-void
.end method

.method private initializeGnss()V
    .locals 7

    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    new-instance v0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v1, 0x0

    const-string v2, "gps"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "unable to bind to GeofenceProxy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setGnssProvider()V

    :cond_1
    return-void
.end method

.method private initializeProvidersLocked()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.location.service.v3.NetworkLocationProvider"

    const v3, 0x111007a

    const v4, 0x104023e

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LocationManagerService"

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string/jumbo v5, "network"

    invoke-direct {v4, v0, v5, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "no network location provider found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setNetworkProvider()V

    :goto_0
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x180000

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v7, "Unable to find a direct boot aware fused location provider"

    invoke-static {v4, v7}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1110073

    const v9, 0x1040225

    invoke-static {v4, v6, v7, v9}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string v7, "fused"

    invoke-direct {v6, v0, v7, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "no fused location provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setFusedProvider()V

    :goto_1
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v6, :cond_2

    const-string/jumbo v6, "no geocoder provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".nlp:ready"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".nlp:screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    :cond_3
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v6

    if-nez v6, :cond_4

    const-string/jumbo v7, "unable to bind ActivityRecognitionProxy"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1070079

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_6

    aget-object v10, v3, v9

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    new-instance v23, Lcom/android/internal/location/ProviderProperties;

    aget-object v13, v11, v5

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const/4 v13, 0x5

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/4 v13, 0x7

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    const/16 v13, 0x8

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v13, 0x9

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v13, v23

    invoke-direct/range {v13 .. v22}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v14

    if-nez v14, :cond_5

    new-instance v15, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {v15, v0, v12, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v14, v15

    iget-object v15, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v15, Lcom/android/server/location/MockProvider;

    invoke-direct {v15, v13}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v14, v15}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static synthetic lambda$Cw7xwIE70-6c85ztm6T7WScKZRA(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic lambda$Jsn9f_NWM0cs884cOI1fOaFZw8M(Lcom/android/server/location/LocationManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$SdJCjgY1BwQ-VOtT2s6dcqDrOkA(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$VbEiHJaYRYQKq-KAS1hQcxjIX3w(Lcom/android/server/location/LocationManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$ZMNjuBZeNXZ1-aQV1f9Cim6fRag(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method public static synthetic lambda$fqo6KrQPiessbxGobdg5DXwHuPc(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleWhitelistChanged()V

    return-void
.end method

.method public static synthetic lambda$r1HQs34pMDdwthhOWsKVe7pybhc(Lcom/android/server/location/LocationManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v7, p1, :cond_0

    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v7

    if-eq v7, p2, :cond_0

    invoke-static {v6, p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1000(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v7}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onAppOpChanged(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v3, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBackgroundThrottleIntervalChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

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

.method private onBackgroundThrottleWhitelistChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

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

.method private onBatterySaverModeChangedLocked(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onIgnoreSettingsWhitelistChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

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

.method private onLocationModeChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.extra.LOCATION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v4, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmReportLocSwitchData()V

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->getProviderFlag()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmPrReport()V

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

.method private onPackageDisappeared(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, v4, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onPermissionsChangedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onScreenStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

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

.method private onSystemReady()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/UserInfoHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/SettingsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;-><init>(Lcom/android/server/location/LocationManagerService;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/AppOpsHelper;->addListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    new-instance v1, Lcom/android/server/location/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/UserInfoHelper;->addListener(Lcom/android/server/location/UserInfoHelper$UserListener;)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/LocationManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->initInstance(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->listenEmergencyCallStatus()V

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/location/LocationManagerService;->D:Z

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v3}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    add-int/lit8 v5, v5, 0x1

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

.method private onSystemThirdPartyAppsCanStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeProvidersLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeGnss()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onUserChanged(II)V
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStopped(I)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStarted(I)V

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    goto :goto_2

    :cond_5
    monitor-exit v0

    nop

    :goto_3
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method private removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmRequestTimeCount(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$3300(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/location/LocationManagerService$Receiver;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    invoke-static {v4, v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 11

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v8, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;Lcom/android/server/location/LocationManagerService$1;)V

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "foreground"

    goto :goto_0

    :cond_2
    const-string v2, "background"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "featureId is\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WS is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1, v2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p2, v6, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v2, v8, v6, v9, v10}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;J)Z
    .locals 11

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    return v6

    :cond_1
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_2

    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_2

    return v6

    :cond_2
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_3

    return v6

    :cond_3
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    return v0
.end method

.method private updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget-object v5, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_2
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/android/server/location/MockProvider;

    invoke-direct {v3, p2}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v2, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_1
    const-string v2, "Location Manager State:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current System Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "User Info:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Location Settings:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/SettingsHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery Saver Location Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Location Listeners:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Active Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Historical Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    invoke-virtual {v3, v0}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v3, :cond_6

    const-string v3, "Geofences:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Controller Extra Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v4, :cond_7

    const-string v4, " [enabled]"

    goto :goto_4

    :cond_7
    const-string v4, "[disabled]"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "Location Providers:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v1, :cond_a

    const-string v1, "GNSS:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_a
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->flushGnssBatch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public geocoderIsPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fused"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    return-object v0

    :cond_1
    const-string/jumbo v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "network"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3
    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/os/ICancellationSignal;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p3

    move-object v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/server/location/LocationManagerService;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v13

    const/4 v0, 0x1

    if-eqz v13, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    :try_start_0
    invoke-interface {v9, v13}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    const-string v3, "LocationManagerService"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :cond_0
    iget-object v3, v8, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v8, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-gez v3, :cond_1

    return v4

    :cond_1
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;

    invoke-direct {v2, p0, v9}, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    return v0
.end method

.method public getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/location/OpGpsNotificationInjector;->getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/location/OpGpsNotificationInjector;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGnssCapabilities()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->getElapsedRealtimeAgeNanos(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    new-instance v2, Landroid/location/LocationTime;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v2, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v3, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v3, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v3

    if-nez v3, :cond_3

    monitor-exit v1

    return-object v2

    :cond_3
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v1

    return-object v2

    :cond_4
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v4, v0}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_5

    monitor-exit v1

    return-object v2

    :cond_5
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget v5, v0, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :cond_6
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v1
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->checkCallingOrSelfLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getMockProviderRequests()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

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

.method public isLocationEnabledForUser(I)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isProviderEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getCurrentLocation$6$LocationManagerService(Landroid/location/ILocationListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/LocationManagerService;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onSystemReady$2$LocationManagerService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onPermissionsChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSystemReady$3$LocationManagerService(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onSystemReady$4$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSystemReady$5$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2300(Lcom/android/server/location/LocationManagerService$Receiver;)V

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

.method public mdmCheckIfLossSv(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSetLossLevel(J)V

    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11

    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGeofence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v10

    move-object v5, p3

    move-object v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssBatchingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    :cond_0
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    :cond_0
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V
    .locals 3

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-direct {p0, p2, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    :goto_0
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v1, v13, v14, v2}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v9, v1

    invoke-direct {v0, v12, v15, v9}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v8

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    const-string v2, "LocationManagerService"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v1, v15, Lcom/android/server/location/CallerIdentity;->userId:I

    if-eqz v1, :cond_3

    const-string/jumbo v1, "proximity alerts are currently available only to the primary user"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v5, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v16

    move-object/from16 v4, p4

    move-object v5, v12

    move-object/from16 v17, v8

    move-object/from16 v8, p2

    move/from16 v18, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v10, v11, v15}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->isDisableMOLR()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "LocationManagerService"

    const-string v5, "disable MOLR"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v14, v0

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    :goto_0
    if-nez p6, :cond_2

    if-eqz v3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    :cond_2
    move-object/from16 v15, p6

    :goto_1
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-static {v0, v13, v12, v15}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    const/4 v0, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v14}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v14}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_2

    :cond_6
    move v0, v6

    :goto_2
    move v8, v0

    invoke-direct {v1, v14, v11, v8}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v7

    if-nez v3, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "need either listener or intent"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot register both listener and intent"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v2, :cond_b

    move/from16 v18, v5

    goto :goto_5

    :cond_b
    move/from16 v18, v6

    :goto_5
    if-eqz v3, :cond_c

    move/from16 v19, v5

    goto :goto_6

    :cond_c
    move/from16 v19, v6

    :goto_6
    const/16 v20, 0x0

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v6, v11, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v21

    move-object v5, v0

    move/from16 v6, v16

    move-object/from16 v22, v7

    move/from16 v7, v17

    move/from16 v16, v8

    move-object/from16 v8, p4

    move/from16 v23, v9

    move-object v9, v14

    move-object/from16 v24, v10

    move/from16 v10, v18

    move-object/from16 v25, v11

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v21

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v3, :cond_d

    move/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    :try_start_0
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v9, v22

    goto :goto_9

    :cond_d
    move/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    :try_start_1
    invoke-direct {v1, v2, v6, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_7
    if-eqz v0, :cond_e

    move-object/from16 v9, v22

    :try_start_2
    invoke-direct {v1, v9, v0}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V

    goto :goto_8

    :cond_e
    move-object/from16 v9, v22

    :goto_8
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v9, v22

    :goto_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    return v2
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationEnabledForUser(ZI)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/SettingsHelper;->setLocationEnabled(ZI)V

    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderAllowed(Z)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopGnssBatch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    :cond_0
    return-void
.end method
