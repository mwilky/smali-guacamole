.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NO_DISPLAY_MODE_ID:I = 0x0

.field private static final ONEPLUS_SCREEN_REFRESH_RATE:Ljava/lang/String; = "oneplus_screen_refresh_rate"

.field private static final OP_60HZ_MODE_VALUE:I = 0x1

.field private static final OP_AUTO_MODE_VALUE:I = 0x2

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsState:I

.field private mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

.field private mPhysicalDisplayId:J


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6

    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getPowerModeForState(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private tryConnectDisplayLocked(J)V
    .locals 29

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;

    move-result-object v17

    const-string v11, "LocalDisplayAdapter"

    if-nez v17, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid info found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;

    move-result-object v18

    if-nez v18, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid configs found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v19

    if-gez v19, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active config found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    move/from16 v20, v0

    goto :goto_0

    :cond_3
    move/from16 v20, v0

    :goto_0
    nop

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    move-result-object v21

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v22

    nop

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v23

    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v24, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_1

    :cond_4
    move/from16 v0, v24

    :goto_1
    move/from16 v25, v0

    const/4 v8, 0x2

    if-nez v10, :cond_6

    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move/from16 v12, v24

    :goto_2
    new-instance v26, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide/from16 v3, p1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v27, v10

    move/from16 v10, v20

    move-object/from16 v28, v11

    move-object/from16 v11, v23

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$DisplayInfo;[Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;Z)V

    move-object/from16 v10, v26

    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v10, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    move v0, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v20

    move-object/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayProperties([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, v27

    const/4 v2, 0x2

    invoke-virtual {v13, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_3

    :cond_7
    move-object/from16 v1, v27

    const/4 v2, 0x2

    :goto_3
    move-object v10, v1

    :goto_4
    const/4 v1, 0x0

    if-nez v25, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, v13, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oneplus_screen_refresh_rate"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    move/from16 v24, v0

    :cond_8
    move/from16 v1, v24

    :cond_9
    if-eqz v1, :cond_a

    iput-wide v14, v13, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    iput v2, v13, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    const-string/jumbo v0, "setfps 1.0."

    move-object/from16 v2, v28

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$1;

    invoke-direct {v2, v13}, Lcom/android/server/display/LocalDisplayAdapter$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "LocalDisplayAdapter"

    const-string/jumbo v2, "setfps 2.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/LocalDisplayAdapter$2;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v3, 0x898

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .locals 5

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
