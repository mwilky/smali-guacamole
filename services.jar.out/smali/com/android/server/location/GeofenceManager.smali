.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private final mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mSettingsStore:Lcom/android/server/location/SettingsHelper;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GeofenceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/SettingsHelper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Looper;Lcom/android/server/location/GeofenceManager$1;)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$removeExpiredFencesLocked$1(JLcom/android/server/location/GeofenceState;)Z
    .locals 2

    iget-wide v0, p2, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeFence$0(Ljava/lang/String;Lcom/android/server/location/GeofenceState;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;

    invoke-direct {v3, v0, v1}, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntentEnter: pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "entering"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntentExit: pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    const-string v2, "entering"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private updateFences()V
    .locals 19

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v5

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/GeofenceState;

    iget-object v11, v10, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    iget v13, v11, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    iget v12, v11, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v12}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v12

    if-ltz v12, :cond_1

    iget-object v13, v1, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v15, v11, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v0, v11, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    move-object/from16 v17, v14

    iget-object v14, v11, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move-object/from16 v18, v14

    const/4 v14, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    nop

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v10, v5}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v0

    and-int/lit8 v13, v0, 0x1

    if-eqz v13, :cond_2

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v13, v0, 0x2

    if-eqz v13, :cond_3

    iget-object v13, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v10}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v13

    cmpg-double v15, v13, v6

    if-gez v15, :cond_4

    move-wide v6, v13

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_9

    if-eqz v5, :cond_6

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_6

    const-wide v11, 0x415b774000000000L    # 7200000.0

    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v15, v6

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v9, v15, v17

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-long v9, v9

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mSettingsStore:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide v9

    :goto_2
    iget-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_7

    iget-wide v11, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    cmp-long v0, v11, v9

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    iput-object v5, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v0, v9, v10}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    iget-object v11, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v12, v1, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v12}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v0, v1, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_8
    goto :goto_3

    :cond_9
    iget-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    iget-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_a
    :goto_3
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "GeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFences: location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", mFences.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mReceivingLocationUpdates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mLocationUpdateInterval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mLastLocationUpdate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_4

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-direct {v1, v4}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    goto :goto_5

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;)V
    .locals 7

    new-instance v6, Lcom/android/server/location/GeofenceState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JLcom/android/server/location/CallerIdentity;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GeofenceState;

    iget-object v4, v3, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p2, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFence: fence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v3}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFence: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/-$$Lambda$GeofenceManager$HESdncIljfrrsDWi1gRXDTge7RY;

    invoke-direct {v2, p1}, Lcom/android/server/location/-$$Lambda$GeofenceManager$HESdncIljfrrsDWi1gRXDTge7RY;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
