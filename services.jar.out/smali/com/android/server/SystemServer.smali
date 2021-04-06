.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030403

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f

.field private static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mBlobStoreServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIncrementalServiceHandle:J

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iget-wide v2, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v2, v3, v0, v1}, Landroid/os/Process;->setStartTimes(JJ)V

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030403

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 8

    const-string/jumbo v0, "system_server"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string/jumbo v3, "system_server"

    const/4 v4, -0x1

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const-string/jumbo v4, "system_server"

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    :cond_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

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

.method public static synthetic lambda$-CPwHnC0JLmQ1R_LlAGbc_jvNjw(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 5

    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$5(Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v7, :cond_2

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .locals 18

    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    :try_start_0
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xbc3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v10, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v6, "SystemServer"

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v4

    goto/16 :goto_2

    :cond_0
    :goto_0
    :try_start_2
    const-string v7, "Timezone not set; setting to GMT."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "GMT"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v2, :cond_2

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "persist.sys.locale"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-static {v9}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    const-string v0, "Entered the Android system server!"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/16 v0, 0xbc2

    invoke-static {v0, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v3, 0xf0

    if-nez v0, :cond_3

    const/16 v0, 0x13

    :try_start_5
    invoke-static {v3, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    invoke-static {v9}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    invoke-static {v9}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v12, 0x64

    const-wide/16 v14, 0xc8

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    sput-boolean v9, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_4

    :try_start_7
    const-string/jumbo v0, "ro.boot.qe"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    new-instance v12, Lcom/android/server/SystemServiceManager;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v13, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v14, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v7, v4

    :try_start_9
    iget-wide v3, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide/from16 v16, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v3, "System"

    if-eqz v0, :cond_5

    :try_start_a
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v12, v0

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v13, v0

    :try_start_b
    invoke-static {v8, v13, v2}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    :try_start_c
    const-string v14, "*************************************************"

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "********** Failed to load jvmti plugin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_5
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    nop

    sget-object v0, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    :try_start_d
    const-string v0, "StartServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v0, 0x14

    const/16 v4, 0xf0

    invoke-static {v4, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v4, 0xea60

    const-wide/32 v8, 0xea60

    cmp-long v0, v2, v8

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "SystemServerTiming"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_e
    const-string v2, "******************************************"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "************ Failure starting system services"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v7, v4

    :goto_2
    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native spawnFdLeakCheckThread()V
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 14

    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ReadingSystemConfig"

    const-string v5, "ReadingSystemConfig"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-static {v6, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v5, "PlatformCompat"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/compat/PlatformCompat;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "platform_compat"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v6, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v6, v5}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v7, "platform_compat_native"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v6, 0x0

    new-array v7, v6, [J

    invoke-static {v7}, Landroid/app/AppCompatCallbacks;->install([J)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "StartFileIntegrityService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "StartInstaller"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "UriGrantsManagerService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartActivityManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v9, v8}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartDataLoaderManagerService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartIncrementalService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartPowerManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartThermalManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "InitPowerManagement"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartRecoverySystemService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    const-string v9, "StartLightsService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/lights/LightsService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartSidekickService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v9, "config.enable_sidekick_graphics"

    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "StartDisplayManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v9, "WaitForDisplay"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x64

    invoke-virtual {v9, p1, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "trigger_restart_min_framework"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    const-string v10, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_1
    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "Device encrypted - only parsing core apps"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v10, 0xf0

    if-nez v3, :cond_3

    const/16 v3, 0xe

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v10, v3, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_3
    const-string v3, "StartPackageManagerService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    iget-boolean v12, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v7, v11, v12}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    nop

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xf

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v10, v0, v11, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_6

    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v3, "StartOtaDexOptService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v10}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_2
    const-string/jumbo v10, "starting OtaDexOptService"

    invoke-direct {p0, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    throw v3

    :cond_6
    :goto_3
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartSensorPrivacyService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/SensorPrivacyService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    :cond_7
    sget-object v0, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v1, "StartSensorService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void

    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v1
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServer"

    if-eqz v1, :cond_1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const v3, 0x1040201

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method private static startCoreServiceApp(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.coreservice"

    const-string v3, "com.oneplus.coreservice.CoreService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_0
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIncrementalService()J
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 63

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v0, "config.disable_systemtextclassifier"

    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v0, "config.disable_networktime"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v0, "config.enable_lefty"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.type.watch"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v10, "org.chromium.arc"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v34

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "SecondaryZygotePreload"

    sget-object v10, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v11, "SecondaryZygotePreload"

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v10, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v10, "sec_key_att_app_id_provider"

    new-instance v11, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v11, v3}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v10, "StartKeyChainSystemService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v10, "StartSchedulingPolicyService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v10, "scheduling_policy"

    new-instance v11, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v11}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v10, "StartTelecomLoaderService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v10, "StartTelephonyRegistry"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/TelephonyRegistry;

    new-instance v11, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v11}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v10, v3, v11}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_45

    move-object v11, v10

    :try_start_1
    const-string/jumbo v8, "telephony.registry"

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartEntropyMixer"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/EntropyMixer;

    invoke-direct {v8, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v8, v6, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "StartAccountManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartContentService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "InstallSystemProviders"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartDropBoxManager"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartVibratorService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/VibratorService;

    invoke-direct {v8, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_44

    move-object v1, v8

    :try_start_2
    const-string/jumbo v8, "vibrator"

    invoke-static {v8, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartDynamicSystemService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/DynamicSystemService;

    invoke-direct {v8, v3}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_43

    move-object v2, v8

    :try_start_3
    const-string v8, "dynamic_system"

    invoke-static {v8, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_42

    if-nez v32, :cond_2

    :try_start_4
    const-string v8, "StartConsumerIrService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/ConsumerIrService;

    invoke-direct {v8, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    const-string v8, "consumer_ir"

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v35, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object v8, v11

    goto/16 :goto_4b

    :cond_2
    move-object/from16 v35, v9

    :goto_1
    :try_start_5
    const-string v8, "StartAlarmManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v3}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v8, "StartInputManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/input/InputManagerService;

    invoke-direct {v8, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_41

    move-object v10, v8

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "StartWindowManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v8, "StartSensorService"

    invoke-static {v7, v8}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v7, :cond_3

    const/16 v36, 0x1

    goto :goto_2

    :cond_3
    move/from16 v36, v12

    :goto_2
    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->getInstance()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_40

    move/from16 v39, v7

    move-object v7, v3

    move-object/from16 v40, v2

    move-object/from16 v38, v8

    const/4 v2, 0x1

    move-object v8, v10

    move-object/from16 v41, v9

    move/from16 v9, v36

    move-object v2, v10

    move/from16 v10, v39

    move-object/from16 v39, v11

    move-object/from16 v11, v37

    move-object/from16 v37, v5

    move v5, v12

    move-object/from16 v12, v38

    :try_start_7
    invoke-static/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3f

    move-object v10, v7

    :try_start_8
    const-string/jumbo v7, "window"

    const/16 v8, 0x11

    invoke-static {v7, v10, v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v7, "input"

    const/4 v8, 0x1

    invoke-static {v7, v2, v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "SetWindowManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "WindowManagerServiceOnInitReady"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-static {v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3e

    if-nez v32, :cond_4

    if-eqz v34, :cond_4

    :try_start_9
    const-string v7, "StartVrManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v19, v10

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    goto/16 :goto_4b

    :cond_4
    :goto_3
    :try_start_a
    const-string v7, "StartInputManager"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget v7, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    :try_start_b
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (factory test)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :cond_5
    :try_start_c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3e

    if-nez v7, :cond_6

    :try_start_d
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :cond_6
    :try_start_e
    const-string v7, "StartBluetoothService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/BluetoothService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :goto_4
    const-string v7, "IpConnectivityMetrics"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "NetworkWatchlistService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "PinnerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/PinnerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "IorapForwardingService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v7, "SignedConfigService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v7, "AppIntegrityService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3e

    nop

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x2

    const-string v8, "cell_on"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_5

    :cond_8
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    const-string/jumbo v5, "starting Accessibility Manager"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_9
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_10
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    const-string/jumbo v5, "making display ready"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string/jumbo v0, "ro.build.version.ota"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "persist.sys.version.ota"

    move-object/from16 v42, v7

    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "persist.sys.version.ota"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.version.lastota"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v43, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_b

    const-string/jumbo v0, "system_init.startmountservice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "StartStorageManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_11
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v5, v0

    goto :goto_8

    :catchall_4
    move-exception v0

    const-string/jumbo v5, "starting StorageManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v5, v37

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartStorageStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_12
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v37, v5

    :try_start_13
    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v37, v5

    :goto_9
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v44, v37

    goto :goto_b

    :cond_b
    move-object/from16 v44, v37

    :goto_b
    const-string v0, "StartUiModeManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_c

    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_14
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :try_start_15
    const-string/jumbo v5, "update packages"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :goto_c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v45, v7

    goto :goto_d

    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    move-object/from16 v45, v7

    const-string v7, "dexopt"

    invoke-virtual {v5, v7}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v45, v7

    :goto_d
    const-string v0, "PerformFstrimIfNeeded"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_16
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    const-string/jumbo v5, "performing fstrim"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3c

    const-string v0, "StartLockSettingsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_17
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object v11, v0

    goto :goto_f

    :catchall_a
    move-exception v0

    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    :goto_10
    move v7, v0

    if-eqz v5, :cond_e

    if-nez v7, :cond_e

    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v37, v7

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_11

    :cond_e
    move/from16 v37, v7

    :goto_11
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "StartOemLockService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_10
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.DeviceIdleController"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-nez v32, :cond_11

    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_18
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    move-object v7, v0

    :try_start_19
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move/from16 v46, v5

    goto :goto_13

    :catchall_b
    move-exception v0

    goto :goto_12

    :catchall_c
    move-exception v0

    move-object/from16 v7, v42

    :goto_12
    move/from16 v46, v5

    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_14

    :cond_11
    move/from16 v46, v5

    move-object/from16 v7, v42

    :goto_14
    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const v0, 0x10401fa

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "StartAppPredictionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_15

    :cond_12
    const-string v0, "SystemServer"

    const-string v5, "AppPredictionService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const v0, 0x1040202

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_16

    :cond_13
    const-string v0, "SystemServer"

    const-string v5, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1a
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    goto :goto_17

    :catchall_d
    move-exception v0

    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1b
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_18

    :catchall_e
    move-exception v0

    const-string/jumbo v5, "initializing NetworkStackClient"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1c
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "network_management"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v0

    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartIpSecService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1d
    invoke-static {v3, v13}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception v0

    const-string/jumbo v5, "starting IpSec Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTextServicesManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-nez v26, :cond_14

    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_14
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1e
    invoke-static {v3, v13}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v15, v0

    const-string/jumbo v0, "netstats"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    goto :goto_1b

    :catchall_11
    move-exception v0

    const-string/jumbo v5, "starting NetworkStats Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1f
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v3, v5, v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move-object v5, v0

    :try_start_20
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    goto :goto_1d

    :catchall_12
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_1c

    :catchall_13
    move-exception v0

    :goto_1c
    const-string/jumbo v5, "starting NetworkPolicy Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v5, v16

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    invoke-static {v5}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v42, v7

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "StartWifi"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartWifiScanning"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_15
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "StartRttService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.aware"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "StartWifiAware"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.direct"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "StartWifiP2P"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.lowpan"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "StartLowpan"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_19
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.ethernet"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const-string v0, "StartEthernet"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_1b
    const-string v0, "StartConnectivityService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_21
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v3, v13, v15, v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    move-object v7, v0

    :try_start_22
    const-string v0, "connectivity"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    move-object/from16 v47, v8

    const/4 v8, 0x6

    move-object/from16 v48, v9

    const/4 v9, 0x0

    :try_start_23
    invoke-static {v0, v7, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    move-object/from16 v17, v7

    goto :goto_1f

    :catchall_14
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_1e

    :catchall_15
    move-exception v0

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    move-object/from16 v17, v7

    goto :goto_1e

    :catchall_16
    move-exception v0

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    :goto_1e
    const-string/jumbo v7, "starting Connectivity Service"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v31, :cond_1c

    :try_start_24
    const-string v0, "SystemServer"

    const-string v7, "Wigig Service"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    new-instance v7, Ldalvik/system/PathClassLoader;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v8, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v7, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v16, v0

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v9, v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    move-object/from16 v49, v5

    const/4 v9, 0x1

    :try_start_25
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    const-string v5, "SystemServer"

    const-string v9, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v9, v24

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v7, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v50, v0

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v9, v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v50, v5

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    const-string v5, "SystemServer"

    const-string v9, "Successfully loaded WigigService class"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "wigig"

    move-object/from16 v9, v25

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    goto :goto_21

    :catchall_17
    move-exception v0

    goto :goto_20

    :catchall_18
    move-exception v0

    move-object/from16 v49, v5

    :goto_20
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_1c
    move-object/from16 v49, v5

    :goto_21
    const-string v0, "StartNsdService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_26
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    move-object v5, v0

    :try_start_27
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    move-object/from16 v18, v5

    goto :goto_23

    :catchall_19
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_22

    :catchall_1a
    move-exception v0

    :goto_22
    const-string/jumbo v5, "starting Service Discovery Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_28
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1b

    goto :goto_24

    :catchall_1b
    move-exception v0

    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartUpdateLockService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_29
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    goto :goto_25

    :catchall_1c
    move-exception v0

    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartNotificationManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v3}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    nop

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartLocationManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2a
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1e

    move-object v9, v0

    :try_start_2b
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1d

    goto :goto_27

    :catchall_1d
    move-exception v0

    goto :goto_26

    :catchall_1e
    move-exception v0

    move-object/from16 v9, v48

    :goto_26
    const-string/jumbo v5, "starting Country Detector"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2c
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1f

    goto :goto_28

    :catchall_1f
    move-exception v0

    const-string/jumbo v5, "starting StartTimeDetectorService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2d
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_20

    goto :goto_29

    :catchall_20
    move-exception v0

    const-string/jumbo v5, "starting StartTimeZoneDetectorService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-nez v32, :cond_1d

    const-string v0, "StartSearchManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_21

    goto :goto_2a

    :catchall_21
    move-exception v0

    const-string/jumbo v5, "starting Search Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_1d
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110080

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_2b

    :cond_1e
    const-string v0, "SystemServer"

    const-string v5, "Wallpaper service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const-string v0, "StartAudioService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-nez v33, :cond_1f

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v16, v8

    goto :goto_2d

    :cond_1f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040213

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :try_start_2f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_23

    move-object/from16 v16, v8

    :try_start_30
    const-string v8, "$Lifecycle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_22

    goto :goto_2d

    :catchall_22
    move-exception v0

    goto :goto_2c

    :catchall_23
    move-exception v0

    move-object/from16 v16, v8

    :goto_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.broadcastradio"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_20
    const-string v0, "StartDockObserver"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v32, :cond_21

    const-string v0, "StartThermalObserver"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_21
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_31
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v3, v2}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_24

    goto :goto_2e

    :catchall_24
    move-exception v0

    const-string/jumbo v5, "starting WiredAccessoryManager"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "StartMidiManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_22
    const-string v0, "StartAdbService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_25

    goto :goto_2f

    :catchall_25
    move-exception v0

    const-string v5, "SystemServer"

    const-string v7, "Failure starting AdbService"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v30, :cond_24

    :cond_23
    const-string v0, "StartUsbService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_24
    if-nez v32, :cond_25

    const-string v0, "StartSerialService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_33
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_27

    move-object v5, v0

    :try_start_34
    const-string/jumbo v0, "serial"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_26

    goto :goto_31

    :catchall_26
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_30

    :catchall_27
    move-exception v0

    :goto_30
    const-string v5, "SystemServer"

    const-string v7, "Failure starting SerialService"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v5, v20

    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v20, v5

    :cond_25
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_35
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_29

    move-object v5, v0

    :try_start_36
    const-string v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_28

    move-object/from16 v23, v5

    goto :goto_33

    :catchall_28
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_32

    :catchall_29
    move-exception v0

    :goto_32
    const-string v5, "SystemServer"

    const-string v7, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTwilightService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartColorDisplay"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartJobScheduler"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartSoundTrigger"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTrustManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "StartBackupManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_26
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111006e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_28
    const-string v0, "StartRoleManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v5, Lcom/android/server/role/RoleManagerService;

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v8, v7}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v7, v8}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "StartGestureLauncher"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_29
    const-string v0, "StartSensorNotification"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.context_hub"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_2a
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_37
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2a

    goto :goto_34

    :catchall_2a
    move-exception v0

    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "RuntimeService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_38
    const-string/jumbo v0, "runtime"

    new-instance v5, Lcom/android/server/RuntimeService;

    invoke-direct {v5, v3}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception v0

    const-string/jumbo v5, "starting RuntimeService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_2b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111007f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_36

    :cond_2b
    const/4 v0, 0x0

    :goto_36
    move v5, v0

    if-eqz v5, :cond_2c

    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_2c
    if-nez v32, :cond_2d

    if-nez v27, :cond_2d

    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_39
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2d

    move-object v7, v0

    :try_start_3a
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2c

    goto :goto_38

    :catchall_2c
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_37

    :catchall_2d
    move-exception v0

    :goto_37
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v21

    :goto_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v21, v7

    :cond_2d
    const-string v0, "CertBlacklister"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3b
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2e

    goto :goto_39

    :catchall_2e
    move-exception v0

    const-string/jumbo v7, "starting CertBlacklister"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v0, v6}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string/jumbo v7, "startBlobStoreManagerService"

    invoke-static {v0, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    const-string v0, "StartDreamManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v0, v3}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string v7, "graphicsstats"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_2e

    const-string v0, "AddCoverageService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v0}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v7, "coverage"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_2e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "StartPrintManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_2f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.companion_device_setup"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_30
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartMediaSessionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "StartHdmiControlService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_31
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.leanback"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    const-string v0, "StartTvInputManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_33
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.tv.tuner"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_34
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_35
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.leanback"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "StartTvRemoteService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_36
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3c
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_30

    move-object v7, v0

    :try_start_3d
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2f

    move-object/from16 v19, v7

    goto :goto_3b

    :catchall_2f
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_3a

    :catchall_30
    move-exception v0

    :goto_3a
    const-string/jumbo v7, "starting MediaRouterService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.biometrics.face"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v47, v5

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v7, :cond_37

    const-string v0, "StartFaceSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v48, v7

    const-class v7, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_3c

    :cond_37
    move/from16 v48, v7

    :goto_3c
    if-eqz v8, :cond_38

    const-string v0, "StartIrisSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_38
    if-eqz v5, :cond_39

    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_39
    const-string v0, "StartBiometricService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartAuthService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBackgroundDexOptService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3e
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_31

    goto :goto_3d

    :catchall_31
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string/jumbo v7, "starting StartBackgroundDexOptService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-nez v32, :cond_3a

    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3f
    invoke-static {v3}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_32

    goto :goto_3e

    :catchall_32
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string/jumbo v7, "starting DynamicCodeLoggingService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_3a
    if-nez v32, :cond_3b

    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_40
    invoke-static {v3}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_33

    goto :goto_3f

    :catchall_33
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "StartPruneInstantAppsJobService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_3b
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartPeopleService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v48, v9

    move-object/from16 v46, v13

    move-object/from16 v50, v14

    move-object/from16 v51, v15

    move-object/from16 v47, v16

    move-object/from16 v52, v17

    move-object/from16 v53, v18

    move-object/from16 v54, v19

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v23

    move-object/from16 v5, v24

    move-object/from16 v15, v25

    move-object/from16 v19, v11

    goto :goto_40

    :cond_3c
    move-object/from16 v47, v8

    move-object/from16 v48, v9

    move-object/from16 v46, v13

    move-object/from16 v50, v14

    move-object/from16 v51, v15

    move-object/from16 v49, v16

    move-object/from16 v52, v17

    move-object/from16 v53, v18

    move-object/from16 v54, v19

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v23

    move-object/from16 v5, v24

    move-object/from16 v15, v25

    move-object/from16 v19, v11

    :goto_40
    if-nez v32, :cond_3d

    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_3d
    if-eqz v32, :cond_3f

    const-string v0, "StartWearPowerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartWearDisplayService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartWearTimeService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v29, :cond_3e

    const-string v0, "StartWearLeftyService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_3e
    const-string v0, "StartWearGlobalActionsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_3f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.slices_disabled"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "StartSliceManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_40
    if-nez v28, :cond_41

    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_41
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.type.embedded"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "StartIoTSystemService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_42
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v8, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v12, :cond_43

    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    :cond_43
    const-string v0, "StartMmsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v58, v0

    check-cast v58, Lcom/android/server/MmsServiceBroker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.autofill"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "StartAutoFillService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_44
    const-string v0, "StartClipboardService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "AppServiceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeVibratorServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_41
    invoke-virtual {v1}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_34

    goto :goto_41

    :catchall_34
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string/jumbo v7, "making Vibrator Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v19, :cond_45

    :try_start_42
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_35

    goto :goto_42

    :catchall_35
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string/jumbo v7, "making Lock Settings Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v0, v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v31, :cond_46

    :try_start_43
    const-string v0, "SystemServer"

    const-string v8, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v8, "onBootPhase"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    invoke-virtual {v0, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x0

    aput-object v9, v11, v13

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v11, "onBootPhase"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-virtual {v9, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v8, v11

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v11, v13, v7

    invoke-virtual {v8, v15, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_36

    nop

    goto :goto_43

    :catchall_36
    move-exception v0

    const-string v7, "Wigig services ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_43
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_44
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_37

    goto :goto_44

    :catchall_37
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string/jumbo v7, "making Window Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-class v7, Lcom/android/server/SystemService;

    monitor-enter v7

    :try_start_45
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3c

    if-eqz v0, :cond_47

    :try_start_46
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v8, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    sput-object v41, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_38

    goto :goto_45

    :catchall_38
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v10

    move/from16 v38, v12

    move-object/from16 v36, v45

    move-object/from16 v45, v15

    goto/16 :goto_4a

    :cond_47
    :goto_45
    :try_start_47
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3c

    if-eqz v12, :cond_48

    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_48
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v14

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v13, v0

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14, v13}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_49
    const-string v0, "MakePowerManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_48
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_39

    goto :goto_46

    :catchall_39
    move-exception v0

    const-string/jumbo v7, "making Power Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_49
    iget-object v0, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3a

    goto :goto_47

    :catchall_3a
    move-exception v0

    const-string/jumbo v7, "making Display Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x107002e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_48
    if-ge v9, v8, :cond_4a

    aget-object v11, v7, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v1

    const-string v1, "StartDeviceSpecificServices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4a
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3b

    move-object/from16 v20, v5

    goto :goto_49

    :catchall_3b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string/jumbo v5, "starting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v20

    move-object/from16 v1, v41

    goto :goto_48

    :cond_4a
    move-object/from16 v41, v1

    move-object/from16 v20, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v6, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "startBlobStoreManagerService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/am/OpORMServiceInjector;->startORMServiceAppIfNeed(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x43

    const/4 v5, 0x0

    aput v1, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {v3}, Lcom/android/server/SystemServer;->startCoreServiceApp(Landroid/content/Context;)V

    :cond_4b
    move-object/from16 v8, v46

    move-object/from16 v11, v51

    move-object/from16 v9, v49

    move-object/from16 v21, v7

    move-object/from16 v36, v45

    move-object/from16 v7, v52

    move/from16 v38, v12

    move-object/from16 v12, v48

    move-object/from16 v22, v13

    move-object/from16 v13, v56

    move-object/from16 v23, v14

    move-object v14, v2

    move-object/from16 v45, v15

    move-object/from16 v15, v39

    move-object/from16 v16, v54

    move-object/from16 v17, v58

    move-object/from16 v59, v10

    move-object/from16 v10, v50

    move-object/from16 v60, v20

    move-object/from16 v5, v59

    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/-$$Lambda$SystemServer$c50amMOcae1K0NdkHHoWNGvSMJQ;

    move-object/from16 v20, v1

    move-object/from16 v61, v2

    move-object/from16 v2, p0

    move-object/from16 v62, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v62

    move/from16 v6, v38

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$c50amMOcae1K0NdkHHoWNGvSMJQ;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void

    :catchall_3c
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v10

    move/from16 v38, v12

    move-object/from16 v36, v45

    move-object/from16 v45, v15

    :goto_4a
    :try_start_4b
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3d

    throw v0

    :catchall_3d
    move-exception v0

    goto :goto_4a

    :catchall_3e
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v59, v10

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    move-object/from16 v19, v59

    move-object/from16 v7, v61

    goto/16 :goto_4b

    :catchall_3f
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    move-object/from16 v7, v61

    goto/16 :goto_4b

    :catchall_40
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v61, v10

    move-object/from16 v39, v11

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v7, v61

    goto :goto_4b

    :catchall_41
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    goto :goto_4b

    :catchall_42
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    goto :goto_4b

    :catchall_43
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    goto :goto_4b

    :catchall_44
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    goto :goto_4b

    :catchall_45
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    :goto_4b
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    const v0, 0x104020b

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .locals 3

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string/jumbo v1, "startBlobStoreManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer()V
    .locals 3

    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method

.method public synthetic lambda$startOtherServices$6$SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, p1, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v5, "WebViewFactoryPreparation"

    const/4 v0, 0x0

    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v7, "WebViewFactoryPreparation"

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    move-object v6, v0

    :goto_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_1
    const-string v0, "StartSystemUI"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    const-string/jumbo v8, "starting System UI"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz p4, :cond_2

    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    const-string v8, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_2
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p6, :cond_3

    :try_start_3
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    const-string/jumbo v8, "making Network Managment Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_3
    :goto_4
    nop

    :goto_5
    const/4 v0, 0x0

    if-eqz v4, :cond_4

    nop

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :cond_4
    move-object v8, v0

    :goto_6
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeIpSecServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_5

    :try_start_4
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    const-string/jumbo v9, "making IpSec Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    :goto_7
    nop

    :goto_8
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p9, :cond_6

    :try_start_5
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    const-string/jumbo v9, "making Network Stats Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    :goto_9
    nop

    :goto_a
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_7
    :goto_b
    nop

    :goto_c
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_8
    :goto_d
    nop

    :goto_e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v6, :cond_9

    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x258

    invoke-virtual {v0, p1, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeOneplusContextStubReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_8
    invoke-static {}, Lcom/oneplus/android/server/context/OneplusContextStub;->getInstance()Lcom/oneplus/android/server/context/IOneplusContextStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/android/server/context/IOneplusContextStub;->systemReady()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    const-string/jumbo v7, "making OneplusContextStub ready"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartNetworkStack"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception v0

    const-string/jumbo v7, "starting Network Stack"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "StartTethering"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_a
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v7, "android.net.ITetheringConnector"

    const-string v9, "android.permission.MAINLINE_NETWORK_STACK"

    sget-object v10, Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;

    invoke-virtual {v0, v7, v9, v10}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception v0

    const-string/jumbo v7, "starting Tethering"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_a

    :try_start_b
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying CountryDetectorService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_a
    :goto_12
    nop

    :goto_13
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p11, :cond_b

    :try_start_c
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying NetworkTimeService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_b
    :goto_14
    nop

    :goto_15
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p12, :cond_c

    :try_start_d
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_16

    :catchall_d
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying InputManagerService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_c
    :goto_16
    nop

    :goto_17
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_d

    :try_start_e
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_d
    :goto_18
    nop

    :goto_19
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p14, :cond_e

    :try_start_f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_1a

    :catchall_f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying MediaRouterService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_e
    :goto_1a
    nop

    :goto_1b
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_f

    :try_start_10
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_1c

    :catchall_10
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    const-string v7, "Notifying MmsService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_f
    :goto_1c
    nop

    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const-string v0, "IncidentDaemonReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_11
    const-string v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    :cond_10
    goto :goto_1e

    :catchall_11
    move-exception v0

    const-string v7, "Notifying incident daemon running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_11

    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v9, v10}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_11
    return-void
.end method
