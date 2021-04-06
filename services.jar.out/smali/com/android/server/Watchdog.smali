.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:J = 0x7530L

.field private static final COMPLETED:I = 0x0

.field private static final DB:Z = false

.field public static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field private static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field private static final WAITED_HALF:I = 0x2

.field private static final WAITING:I = 0x1

.field private static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mAllowRestart:Z

.field private mController:Landroid/app/IActivityController;

.field private final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field private final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "/vendor/bin/hw/android.hardware.wifi@1.0-service"

    const-string v1, "/vendor/bin/hw/hostapd"

    const-string v2, "/vendor/bin/hw/wpa_supplicant"

    const-string v3, "/system/bin/netd"

    const-string v4, "/system/bin/wificond"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/mediadrmserver"

    const-string v9, "/system/bin/mediaserver"

    const-string v10, "/system/bin/netd"

    const-string v11, "/system/bin/sdcard"

    const-string v12, "/system/bin/surfaceflinger"

    const-string v13, "/system/bin/vold"

    const-string/jumbo v14, "media.extractor"

    const-string/jumbo v15, "media.metrics"

    const-string/jumbo v16, "media.codec"

    const-string/jumbo v17, "media.swcodec"

    const-string v18, "com.android.bluetooth"

    const-string v19, "/apex/com.android.os.statsd/bin/statsd"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v6, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v7, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v8, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v9, "android.hardware.gnss@1.0::IGnss"

    const-string v10, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v11, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v12, "android.hardware.health@2.0::IHealth"

    const-string v13, "android.hardware.light@2.0::ILight"

    const-string v14, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v15, "android.hardware.media.omx@1.0::IOmx"

    const-string v16, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v17, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v18, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v19, "android.hardware.sensors@1.0::ISensors"

    const-string v20, "android.hardware.sensors@2.0::ISensors"

    const-string v21, "android.hardware.sensors@2.1::ISensors"

    const-string v22, "android.hardware.vr@1.0::IVr"

    const-string v23, "android.system.suspend@1.0::ISystemSuspend"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "foreground thread"

    const-wide/32 v5, 0xea60

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "surface animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private binderStateRead()V
    .locals 5

    const-string v0, "Watchdog"

    :try_start_0
    const-string v1, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/dev/binderfs/binder_logs/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/anr/BinderTraces_pid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private cleanupProcesses(J)V
    .locals 4

    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v1, "watchdogKillerThread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    nop

    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isInterestingJavaProcess(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processDied(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interesting Java process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died. Pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interesting Java process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started. Pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v0

    move-object v9, v1

    :goto_0
    const/4 v1, 0x0

    monitor-enter p0

    const-wide/16 v2, 0x7530

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v4, v7, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, v7, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v10, v1

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    const-wide/16 v11, 0x7530

    if-lez v0, :cond_4

    :try_start_1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    move v1, v0

    goto :goto_3

    :cond_2
    move v1, v10

    :goto_3
    :try_start_2
    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    :try_start_3
    const-string v6, "Watchdog"

    invoke-static {v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    move v10, v0

    goto :goto_5

    :cond_3
    move v10, v1

    :goto_5
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    sub-long v2, v11, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    iget-object v1, v7, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v1

    move v0, v1

    :cond_5
    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v8, 0x0

    monitor-exit p0

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    monitor-exit p0

    goto :goto_0

    :cond_7
    if-ne v1, v13, :cond_a

    if-nez v8, :cond_9

    const-string v6, "Watchdog"

    const-string v13, "WAITED_HALF"

    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    iget-object v13, v7, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    nop

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-static {v6, v15, v15, v13, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    move-result-object v13

    move-object v9, v13

    const/4 v8, 0x1

    const-string/jumbo v13, "sys.debug.watchdog"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-direct {v7, v11, v12}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    :cond_8
    invoke-static {}, Landroid/os/PerfMonitor;->isEnable()Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x12f

    const-string v12, "WAITED_HALF"

    invoke-static {v11, v12}, Landroid/util/Plog;->i(ILjava/lang/String;)V

    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    move-object v12, v6

    goto :goto_6

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    const-string v1, "Open FD high water mark reached"

    move-object v11, v1

    move-object v12, v6

    :goto_6
    iget-boolean v1, v7, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v15, v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v0, 0xaf2

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v14}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v2, v0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v6, v2, v0, v13, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    move-result-object v13

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    :cond_c
    const-wide/16 v16, 0x1388

    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "traces_SystemServer_WDT"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v19, v0

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v20, v1

    const/16 v1, 0x180

    move-object/from16 v21, v2

    const/4 v2, -0x1

    :try_start_6
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v9, :cond_e

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    sub-long v0, v0, v22

    const-wide/32 v22, 0x493e0

    const-wide/32 v24, 0x493e0

    cmp-long v2, v0, v24

    if-gez v2, :cond_d

    const-string v2, "Watchdog"

    move-wide/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First set of traces taken from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v2, v19

    :try_start_8
    invoke-direct {v7, v2, v9}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7

    :cond_d
    move-wide/from16 v24, v0

    move-object/from16 v2, v19

    const-string v0, "Watchdog"

    const-string v1, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_7
    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v2, v19

    move-object/from16 v19, v3

    goto :goto_a

    :cond_e
    move-object/from16 v2, v19

    :try_start_9
    const-string v0, "Watchdog"

    const-string v1, "First set of traces are empty!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v13, :cond_f

    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v19, v3

    :try_start_a
    const-string v3, "Second set of traces taken from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v7, v2, v13}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_9

    :cond_f
    move-object/from16 v19, v3

    const-string v0, "Watchdog"

    const-string v1, "Second set of traces are empty!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v2, v19

    move-object/from16 v19, v3

    goto :goto_a

    :cond_10
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v3

    const-string v0, "Watchdog"

    const-string v1, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_9
    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v3

    :goto_a
    const-string v1, "Watchdog"

    const-string v3, "Exception creating Watchdog dump file:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v3, "watchdogWriteToDropbox"

    move-object v1, v0

    move-object/from16 v22, v2

    move-object/from16 v2, p0

    move-wide/from16 v23, v4

    move-object v4, v11

    move-object/from16 v5, v19

    move-object/from16 v25, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x7d0

    :try_start_b
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7

    :goto_c
    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_c

    :goto_d
    nop

    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-wide/16 v4, 0xbb8

    const/16 v0, 0x77

    if-eqz v3, :cond_11

    const-string v2, "Watchdog"

    const-string v6, "Triggering SysRq for system_server watchdog"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v0, 0x6c

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    const/16 v0, 0x63

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    goto :goto_e

    :cond_11
    const-string/jumbo v2, "ro.build.release_type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "aging"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_12
    :goto_e
    monitor-enter p0

    :try_start_c
    iget-object v0, v7, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v2, v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_14

    const-string v0, "Watchdog"

    const-string v4, "Reporting stuck state to activity controller"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    invoke-interface {v2, v11}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    const-string v4, "Watchdog"

    const-string v5, "Activity controller requested to coninue to wait"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_13
    goto :goto_f

    :catch_8
    move-exception v0

    :cond_14
    :goto_f
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v10, 0x2

    :cond_15
    const/4 v4, 0x2

    if-lt v10, v4, :cond_16

    const-string v0, "Watchdog"

    const-string v4, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_16
    if-lez v10, :cond_17

    const-string v0, "Watchdog"

    const-string v4, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_17
    if-nez v15, :cond_18

    const-string v0, "Watchdog"

    const-string v4, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Watchdog"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_19
    const-wide/32 v4, 0xea60

    invoke-direct {v7, v4, v5}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Watchdog"

    const-string v4, "*** GOODBYE!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getInitializedFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_e
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1a
    :goto_10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_11

    :cond_1b
    const-string v0, "Watchdog"

    const-string v4, "After KillingAllProcessesByWatchdog:  Watchdog is *not* killing the system process"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move v1, v10

    goto :goto_12

    :catchall_2
    move-exception v0

    :goto_12
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
