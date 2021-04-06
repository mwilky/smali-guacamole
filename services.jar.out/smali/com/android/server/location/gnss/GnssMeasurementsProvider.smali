.class public abstract Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;,
        Lcom/android/server/location/gnss/GnssMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/GnssRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssMeasProvider"


# instance fields
.field private final mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

.field private mStartedCollection:Z

.field private mStartedFullTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssMeasProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V
    .locals 1

    const-string v0, "GnssMeasProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_start_measurement_collection(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method private getMergedFullTracking()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enable_gnss_raw_meas_full_tracking"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mListenerMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mListenerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    invoke-virtual {v7}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->getRequest()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GnssRequest;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v9

    if-eqz v9, :cond_2

    monitor-exit v5

    return v3

    :cond_2
    goto :goto_1

    :cond_3
    monitor-exit v5

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_start_measurement_collection(Z)Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled addListener result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssMeasProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    return-object v0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    nop

    :goto_0
    new-instance v1, Lcom/android/server/location/gnss/GnssMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailableInPlatform()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onMeasurementsAvailable$0$GnssMeasurementsProvider(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "GnssMeasProvider"

    const-string v2, "GNSS measurements"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p2, p1}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->setSupported(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->updateResult()V

    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->tryUpdateRegistrationWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->updateResult()V

    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssMeasurementsProvider$MwKCr2bnxyNYMRRxCkNEyvhkEpg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssMeasurementsProvider$MwKCr2bnxyNYMRRxCkNEyvhkEpg;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method protected registerWithService()I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->getMergedFullTracking()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mStartedCollection:Z

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mStartedFullTracking:Z

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x4

    return v2
.end method

.method resumeIfStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssMeasProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mStartedCollection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mStartedFullTracking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementProviderNative;->stopMeasurementCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mStartedCollection:Z

    :cond_0
    return-void
.end method
