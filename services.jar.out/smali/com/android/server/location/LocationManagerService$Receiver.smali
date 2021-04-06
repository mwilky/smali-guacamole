.class public final Lcom/android/server/location/LocationManagerService$Receiver;
.super Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Receiver"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mHideFromAppOps:Z

.field private final mKey:Ljava/lang/Object;

.field private final mListener:Landroid/location/ILocationListener;

.field private mOpHighPowerMonitoring:Z

.field private mOpMonitoring:Z

.field private mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0, p4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean p6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$1700(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    const-string v2, "*location*"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p5, :cond_2

    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p5, v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method private callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v6}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_1
    return v0

    :catch_1
    move-exception v0

    return v2
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 3

    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 5

    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateMonitoring(ZZZ)Z
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->startHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppOpsHelper;->stopHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1, p0}, Lcom/android/server/location/LocationManagerService;->access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v5}, Lcom/android/server/location/CallerIdentity;->asPermission(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    return v1
.end method

.method public callRemovedLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/location/ILocationListener;->onRemoved()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 3

    iget v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingBroadcasts:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/location/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingIntent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$updateMonitoring$0$LocationManagerService$Receiver()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_0

    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " monitoring location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v5, v3}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpMonitoring:Z

    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(ZZZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/location/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v3, v2, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$Receiver;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/-$$Lambda$LocationManagerService$Receiver$gfpPLFZmTd0teWe9z31Z57KHTCE;

    invoke-direct {v6, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Receiver$gfpPLFZmTd0teWe9z31Z57KHTCE;-><init>(Lcom/android/server/location/LocationManagerService$Receiver;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_5
    :goto_2
    return-void
.end method
