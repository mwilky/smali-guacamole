.class public Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssManagerService"


# instance fields
.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private final mContext:Landroid/content/Context;

.field private final mGnssAntennaInfoListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

.field private mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z

.field private final mGnssBatchingLock:Ljava/lang/Object;

.field private final mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

.field private final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Landroid/location/GnssRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private final mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field private final mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

.field private final mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iput-object p5, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    if-nez p6, :cond_0

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;)V

    move-object p6, v0

    :cond_0
    iput-object p6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p6}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssAntennaInfoProvider()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/gnss/GnssBatchingProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-void
.end method

.method private addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            "TRequest:",
            "Ljava/lang/Object;",
            ">(TTRequest;TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static {v4, v14, v15}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v5, v4}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    new-instance v5, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    move-object/from16 v13, p7

    invoke-direct {v5, v1, v2, v4, v13}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    move-object v12, v5

    invoke-interface/range {p2 .. p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v5

    if-nez v5, :cond_1

    return v6

    :cond_1
    move-object/from16 v10, p6

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq v3, v5, :cond_3

    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne v3, v7, :cond_4

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    const/4 v7, 0x3

    :goto_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v8, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v9, v4, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v8, v9}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v19

    move-object/from16 v8, p3

    const/4 v9, 0x0

    move/from16 v10, v16

    move-object/from16 v16, v11

    move/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    move/from16 v13, v19

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    :goto_2
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v6, v4, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {v0, v4}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    :cond_6
    const/4 v5, 0x1

    return v5
.end method

.method public static isGnssSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupported()Z

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
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManagerInternal;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic lambda$de6v4jWKxQDC9J4FdGGrfKg2phA(Lcom/android/server/location/gnss/GnssManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method private removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "GnssManagerService"

    const-string v1, "Can not remove GNSS data listener. GNSS data provider not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne p2, v2, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne p2, v2, :cond_3

    const/4 v2, 0x2

    move v5, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    move v5, v2

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v2

    iget-object v6, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v11

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    invoke-virtual {p2, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method

.method private updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getRequest()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    if-eq v5, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {p3, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IInterface;

    if-nez p5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v5}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2, v4, v5, v3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    :goto_2
    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

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

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    new-instance v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-direct {v3, v2, p1, v0, v4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    nop

    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

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

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    array-length v1, p3

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "--gnssmetrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_0
    return-void

    :cond_1
    const-string v1, "GnssMeasurement Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "GnssNavigationMessage Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "GnssStatus Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_5

    const-string v1, "GNSS batching in progress"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->getBatchSize()I

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

.method public getGnssCapabilities()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    return-void
.end method

.method public synthetic lambda$addGnssBatchingCallback$0$GnssManagerService(Landroid/location/IBatchedLocationCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const-string v4, "gps"

    invoke-virtual {v3, v4, v0}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GnssManagerService"

    const-string/jumbo v4, "reportLocationBatch() called without user permission"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "GnssManagerService"

    const-string/jumbo v5, "reportLocationBatch() failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized onSystemReady()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

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

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssBatchingCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v3}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GnssManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v2, :cond_1

    const-string v2, "GnssManagerService"

    const-string/jumbo v3, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider;->start(JZ)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopGnssBatch()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->stop()Z

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

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
