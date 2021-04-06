.class Lcom/android/server/location/gnss/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .locals 1

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(IDDDIIII)Z
    .locals 1

    invoke-static/range {p0 .. p10}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v15, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v2, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$1;)V

    iput v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-wide/from16 v3, p2

    :try_start_1
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->latitude:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-wide/from16 v5, p4

    :try_start_2
    iput-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->longitude:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-wide/from16 v7, p6

    :try_start_3
    iput-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->radius:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v9, p8

    :try_start_4
    iput v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v10, p9

    :try_start_5
    iput v10, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v11, p10

    :try_start_6
    iput v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v12, p11

    :try_start_7
    iput v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    iget-object v13, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    goto :goto_1

    :cond_0
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    :goto_0
    monitor-exit v15

    return v0

    :catchall_6
    move-exception v0

    move-wide/from16 v3, p2

    :goto_1
    move-wide/from16 v5, p4

    :goto_2
    move-wide/from16 v7, p6

    :goto_3
    move/from16 v9, p8

    :goto_4
    move/from16 v10, p9

    :goto_5
    move/from16 v11, p10

    :goto_6
    move/from16 v12, p11

    :goto_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->isGeofenceSupported()Z

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

.method public pauseHardwareGeofence(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHardwareGeofence(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    iput p2, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumeIfStarted()V
    .locals 15

    sget-boolean v0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
