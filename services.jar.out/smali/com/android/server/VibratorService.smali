.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$ExternalVibratorService;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final ACTION_VIBRATION_CANCEL:Ljava/lang/String; = "com.oem.intent.action.CANCEL_VIBRATION"

.field private static final ASYNC_TIMEOUT_MULTIPLIER:J = 0x2L

.field private static final DEBUG:Z

.field private static final DEBUG_ONEPLUS:Z

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_MUTE:I = -0x64

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCapabilities:J

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentExternalVibration:Landroid/os/ExternalVibration;

.field protected mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Landroid/os/Handler;

.field private mHapticFeedbackIntensity:I

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsVibrating:Z

.field private mLidState:I

.field protected final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousAlarmVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousNotificationVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousRingVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingIntensity:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSetVibratorEffectPid:I

.field private mSetVibratorEffectUid:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportedEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsAmplitudeControl:Z

.field private final mSupportsExternalControl:Z

.field private final mSystemUiPackage:Ljava/lang/String;

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVibratorUnderExternalControl:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private resumeIndex:I

.field private rtpFD:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    iput v0, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/VibratorService$5;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mLidState:I

    new-instance v3, Lcom/android/server/VibratorService$6;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initCaliFile()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetSupportedEffects()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->asList([I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetCapabilities()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v4, "*vibrator*"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.LID_SWITCH"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v5, 0x1070086

    invoke-direct {p0, v5}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    sget-object v6, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v6, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v6

    const v7, 0x1070055

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    const v8, 0x1070026

    invoke-direct {p0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-static {v10, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    const/16 v12, 0x15

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v9, "external_vibrator_service"

    invoke-static {v9, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpVibratorServiceInjector;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/VibratorService;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$500(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    return-object v0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->printVibrationInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    const-string v2, "VibratorService"

    if-nez v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_5

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_6

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    goto :goto_1

    :cond_6
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_7

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Composed;->scale(FI)Landroid/os/VibrationEffect$Composed;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_8

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    :cond_8
    return-void

    :cond_9
    return-void
.end method

.method private static varargs asList([I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 7

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v2, "doCancelVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v2, 0x24

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v5}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v5

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private doStopVibrateLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorStop(Z)V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    return-void
.end method

.method private doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 8

    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorComposedEffectLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    const-wide/16 v6, 0x20

    :try_start_2
    invoke-direct {p0, v6, v7}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    nop

    :try_start_3
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getPrimitiveEffects()Ljava/util/List;

    move-result-object v3

    new-array v5, v5, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-static {v3, p1}, Lcom/android/server/VibratorService;->vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V

    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    array-length v6, v3

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorExists()Z
    .locals 1

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->turnOffLinearMotorVibrator()V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorOn(JIILandroid/os/VibrationAttributes;)V
    .locals 7

    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    :cond_0
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning vibrator on for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms with amplitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {p5}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x61

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1, p2, p3}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorOn(JI)V

    goto :goto_1

    :cond_4
    const-string v4, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    :cond_5
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorOnEnvelope([I[I[IZIILandroid/os/VibrationAttributes;)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    iget-object v3, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x3

    :try_start_0
    aget v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v4, v4

    move/from16 v6, p6

    :try_start_1
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v4, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v7, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    aget v8, v2, v0

    int-to-long v8, v8

    invoke-virtual/range {p7 .. p7}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p4

    move/from16 v7, p5

    goto :goto_2

    :cond_1
    const/16 v5, 0xc

    new-array v5, v5, [I

    const/4 v7, 0x0

    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    mul-int/lit8 v8, v7, 0x3

    aget v9, v2, v7

    aput v9, v5, v8

    mul-int/lit8 v8, v7, 0x3

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aget v10, p2, v7

    aput v10, v5, v8

    mul-int/lit8 v8, v7, 0x3

    const/4 v10, 0x2

    add-int/2addr v8, v10

    aget v11, p3, v7

    aput v11, v5, v8

    const-string/jumbo v8, "relativeTime, scale, freq = { %d, %d, %d }"

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    mul-int/lit8 v13, v7, 0x3

    aget v13, v5, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    mul-int/lit8 v12, v7, 0x3

    add-int/2addr v12, v9

    aget v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    mul-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v10

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v10

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "VibratorService"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "VibratorService"

    const-string/jumbo v7, "vibrator perform envelope"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    move/from16 v7, p5

    :try_start_2
    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v8, p4

    :try_start_3
    invoke-static {v5, v8}, Lcom/android/server/VibratorService;->vibratorPerformEnvelope([IZ)V

    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move/from16 v8, p4

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v8, p4

    move/from16 v7, p5

    goto :goto_3

    :catchall_2
    move-exception v0

    move/from16 v8, p4

    move/from16 v7, p5

    move/from16 v6, p6

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method private doVibratorOnExtPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorOnExtPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$ExtPrebaked;

    move-object v14, v0

    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v15, 0x0

    if-nez v0, :cond_1

    const/16 v1, 0xff

    :try_start_2
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getScale()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    invoke-direct {v10, v5, v6}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    cmp-long v3, v1, v15

    if-lez v3, :cond_1

    iget v3, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v1

    :cond_1
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    if-nez v17, :cond_2

    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v15

    :cond_2
    :try_start_4
    new-instance v18, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget-object v5, v11, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v6, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v11, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (fallback)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v18

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v15

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorOnLoopPattern(Landroid/os/VibrationEffect;I)J
    .locals 25

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/VibrationEffect$LoopPattern;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getSignalType()[I

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getStartTime()[I

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getPatternDuration()[I

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEffectId()[I

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getStrength()[I

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEnvelope()[I

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEnvelopeAlgo()[I

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEventNumber()I

    move-result v10

    const/16 v11, 0x100

    new-array v11, v11, [I

    const/4 v12, -0x1

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    sget-boolean v17, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v12, "VibratorService"

    move/from16 v18, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v14

    const-string v14, "doVibratorOnLoopPattern, resumeIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", eventNum = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v18, v13

    move/from16 v19, v14

    :goto_0
    iget v12, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    if-ge v12, v10, :cond_1

    iget v12, v1, Lcom/android/server/VibratorService;->resumeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    move v14, v12

    move-wide/from16 v20, v15

    :goto_2
    const/16 v15, 0x10

    if-ge v14, v10, :cond_4

    sub-int v22, v14, v12

    mul-int/lit8 v22, v22, 0x10

    :try_start_1
    aget v15, v3, v14

    aput v15, v11, v22

    add-int/lit8 v15, v22, 0x1

    aget v23, v4, v14

    aput v23, v11, v15

    aget v15, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v14

    int-to-long v13, v15

    move-object/from16 v24, v2

    move-wide/from16 v1, v20

    add-long v20, v1, v13

    add-int/lit8 v1, v22, 0x2

    :try_start_2
    aget v2, v5, v23

    aput v2, v11, v1

    aget v1, v5, v23

    int-to-long v1, v1

    add-long v20, v20, v1

    aget v1, v3, v23

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v22, 0x2

    aget v2, v6, v18

    aput v2, v11, v1

    add-int/lit8 v1, v22, 0x3

    add-int/lit8 v2, v18, 0x1

    aget v13, v7, v18

    aput v13, v11, v1

    move/from16 v18, v2

    goto :goto_3

    :cond_2
    aget v1, v3, v23

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v22, 0x2

    aget v2, v9, v19

    aput v2, v11, v1

    mul-int/lit8 v1, v19, 0xc

    add-int/lit8 v2, v22, 0x4

    const/16 v13, 0xc

    invoke-static {v8, v1, v11, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v19, v19, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v14, v23, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_7

    :cond_4
    move-object/from16 v24, v2

    move/from16 v23, v14

    move-wide/from16 v1, v20

    sget-boolean v13, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    :goto_4
    sub-int v14, v10, v12

    if-ge v13, v14, :cond_7

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v15, :cond_5

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    mul-int/lit8 v21, v13, 0x10

    add-int v21, v21, v14

    move-object/from16 v22, v3

    aget v3, v11, v21

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->print(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v22

    const/16 v15, 0x10

    goto :goto_5

    :cond_5
    move-object/from16 v22, v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    mul-int/lit8 v3, v13, 0x10

    const/4 v14, 0x1

    add-int/2addr v3, v14

    aget v3, v11, v3

    const/4 v15, -0x1

    if-ne v3, v15, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v22

    const/16 v15, 0x10

    goto :goto_4

    :cond_7
    move-object/from16 v22, v3

    goto :goto_6

    :cond_8
    move-object/from16 v22, v3

    :goto_6
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "VibratorService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vibrator perform loop pattern, duration = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getAmplitude()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v13, v1

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct {v1, v3}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V

    invoke-static {v11}, Lcom/android/server/VibratorService;->vibratorPerformPattern([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v2, p2

    :try_start_4
    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    monitor-exit v24

    return-wide v13

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 v1, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v24, v2

    :goto_8
    move/from16 v2, p2

    :goto_9
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_9
.end method

.method private doVibratorOnPattern(Landroid/os/VibrationEffect;I)J
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Pattern;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getSignalType()[I

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getStartTime()[I

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getPatternDuration()[I

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEffectId()[I

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getStrength()[I

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEnvelope()[I

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEnvelopeAlgo()[I

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEventNumber()I

    move-result v10

    const/16 v11, 0x100

    new-array v11, v11, [I

    const/4 v12, -0x1

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-wide/from16 v21, v15

    move/from16 v16, v13

    move-wide/from16 v12, v21

    move/from16 v15, v17

    :goto_0
    const/4 v1, 0x1

    if-ge v15, v10, :cond_3

    mul-int/lit8 v18, v15, 0x10

    :try_start_1
    aget v19, v3, v15

    aput v19, v11, v18

    mul-int/lit8 v18, v15, 0x10

    add-int/lit8 v18, v18, 0x1

    aget v19, v4, v15

    aput v19, v11, v18

    aget v1, v4, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v2

    int-to-long v1, v1

    add-long/2addr v12, v1

    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    :try_start_2
    aget v20, v5, v15

    aput v20, v11, v1

    aget v1, v5, v15

    move-object/from16 v20, v3

    int-to-long v2, v1

    add-long/2addr v12, v2

    aget v1, v20, v15

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    aget v2, v6, v16

    aput v2, v11, v1

    mul-int/lit8 v1, v15, 0x10

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v16, 0x1

    aget v3, v7, v16

    aput v3, v11, v1

    move/from16 v16, v2

    goto :goto_1

    :cond_0
    aget v1, v20, v15

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "envelopeAlgoArr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget v3, v9, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    aget v2, v9, v14

    aput v2, v11, v1

    mul-int/lit8 v1, v14, 0xc

    mul-int/lit8 v2, v15, 0x10

    add-int/lit8 v2, v2, 0x4

    const/16 v3, 0xc

    invoke-static {v8, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_5

    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_6

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    mul-int/lit8 v15, v1, 0x10

    add-int/2addr v15, v2

    aget v15, v11, v15

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    mul-int/lit8 v2, v1, 0x10

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v2, v11, v2

    const/4 v15, -0x1

    if-ne v2, v15, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "VibratorService"

    const-string/jumbo v2, "vibrator perform pattern"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getAmplitude()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v2, p0

    :try_start_3
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V

    invoke-static {v11}, Lcom/android/server/VibratorService;->vibratorPerformPattern([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v1, p2

    :try_start_4
    invoke-direct {v2, v1, v12, v13}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    monitor-exit v19

    return-wide v12

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v2, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v1

    :goto_6
    move/from16 v1, p2

    :goto_7
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7
.end method

.method private doVibratorOnPatternHe(Landroid/os/VibrationEffect;I)J
    .locals 12

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$PatternHe;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getPatternInfo()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getLooper()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getInterval()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getAmplitude()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getFreq()I

    move-result v6

    sget-boolean v7, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "patternHe="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " looper:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " amplitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformHe([IIIII)J

    move-result-wide v7

    const-string v9, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "patternId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x1f4

    invoke-direct {p0, p2, v9, v10}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    monitor-exit v0

    return-wide v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOnPatternHed(Landroid/os/VibrationEffect;I)J
    .locals 12

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$PatternHed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getPatternInfo()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getLooper()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getInterval()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getAmplitude()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getFreq()I

    move-result v6

    sget-boolean v7, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "patternHed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " looper:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " amplitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformHed([IIIII)J

    move-result-wide v7

    const-string v9, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "patternId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x1f4

    invoke-direct {p0, p2, v9, v10}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    monitor-exit v0

    return-wide v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOnRTP(Landroid/os/ParcelFileDescriptor;II)J
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibrator Perform Rtp"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->vibratorPerformRtp(Ljava/io/FileDescriptor;)J

    move-result-wide v3

    move-wide v0, v3

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    :cond_1
    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v15, 0x0

    if-nez v0, :cond_3

    :try_start_2
    new-array v1, v2, [I

    const/16 v4, 0x61

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-wide/16 v7, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v2

    invoke-static {v1, v2, v11}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    move-wide v3, v1

    :goto_1
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_2

    mul-long/2addr v3, v7

    :cond_2
    cmp-long v5, v3, v15

    if-lez v5, :cond_3

    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v5, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :cond_3
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v15

    :cond_4
    :try_start_4
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    if-nez v17, :cond_5

    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v15

    :cond_5
    :try_start_5
    new-instance v18, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget-object v5, v11, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v6, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v11, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (fallback)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v18

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v15

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorSetAmplitude(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private doVibratorStop(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning vibrator stop. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time before vibratorStop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorStop()I

    move-result v2

    if-eqz p1, :cond_4

    iput v2, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loop pattern stopped, current index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time after vibratorStop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "Vibrator Service:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentExternalVibration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVibrating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorStateListeners Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSupportedEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

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

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 6

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v2

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    iget v4, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    iget v4, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    const-wide v4, 0x20b00000009L

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    const-wide v4, 0x20b0000000aL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    const-wide v4, 0x20b0000000bL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    const-wide v4, 0x20b0000000cL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_3

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->replaceFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypassing DND for vibration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private hasCapability(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static intensityToEffectStrength(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .locals 1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    const-string v2, "Skip vibrating on gaming mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v3, 0x21

    if-eq v0, v3, :cond_2

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0x41

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .locals 1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotification(I)Z
    .locals 1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRingtone(I)Z
    .locals 1

    const/16 v0, 0x21

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method private noteVibratorOffLocked()V
    .locals 4

    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    const/16 v0, 0x54

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    nop

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V

    :cond_1
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-interface {p1, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VibratorService"

    const-string v2, "Vibrator callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyStateListenersLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IVibratorStateListener;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void
.end method

.method private reportFinishVibrationLocked()V
    .locals 6

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private sendLoopParameter(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLoopParameter : amplitude  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetDynamicCoef(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVibratorUnderExternalControl(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VibratorService"

    if-eqz p1, :cond_0

    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    return-void
.end method

.method private static shouldBypassDnd(Landroid/os/VibrationAttributes;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    const-string v2, "VibratorService"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Would be an error: vibrate from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "apply_ramping_ringer"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    return v4

    :cond_3
    if-ne v1, v3, :cond_4

    move v4, v3

    :cond_4
    return v4
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 11

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    goto/16 :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_1

    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_3

    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Composed;

    if-eqz v2, :cond_4

    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$ExtPrebaked;

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorOnExtPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    goto/16 :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$RTPStream;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$RTPStream;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$RTPStream;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->rtpFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$RTPStream;->getAmplitude()I

    move-result v4

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/VibratorService;->doVibratorOnRTP(Landroid/os/ParcelFileDescriptor;II)J

    move-result-wide v3

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    goto/16 :goto_0

    :cond_8
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Envelope;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Envelope;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getRelativeTimeArr()[I

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getScaleArr()[I

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getFreqArr()[I

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->isSteepMode()Z

    move-result v7

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getAmplitude()I

    move-result v8

    iget v9, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v10, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOnEnvelope([I[I[IZIILandroid/os/VibrationAttributes;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getRelativeTimeArr()[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Pattern;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Pattern;

    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPattern(Landroid/os/VibrationEffect;I)J

    move-result-wide v3

    cmp-long v5, v3, v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$LoopPattern;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$LoopPattern;

    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnLoopPattern(Landroid/os/VibrationEffect;I)J

    move-result-wide v3

    cmp-long v5, v3, v5

    if-lez v5, :cond_c

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$PatternHe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "VibratorService"

    if-eqz v2, :cond_e

    :try_start_2
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$PatternHe;

    const-string/jumbo v4, "vibratorservice play he"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPatternHe(Landroid/os/VibrationEffect;I)J

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$PatternHed;

    if-eqz v2, :cond_f

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$PatternHed;

    const-string/jumbo v4, "vibratorservice play hed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPatternHed(Landroid/os/VibrationEffect;I)J

    goto :goto_0

    :cond_f
    const-string v2, "Unknown vibration type, ignoring"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 6

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x24

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Prebaked;

    invoke-static {v0}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v2

    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->vibratorAlwaysOnEnable(JJJ)V

    :goto_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_2

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    const/4 v4, 0x0

    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    const-string v2, "haptic_feedback_intensity"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    const-string/jumbo v2, "notification_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    const-string/jumbo v2, "ring_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return-void
.end method

.method private updateVibrators()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_0

    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static native vibratorAlwaysOnDisable(J)V
.end method

.method static native vibratorAlwaysOnEnable(JJJ)V
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorGetCapabilities()J
.end method

.method static native vibratorGetSupportedEffects()[I
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V
.end method

.method static native vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J
.end method

.method static native vibratorPerformEnvelope([IZ)V
.end method

.method static native vibratorPerformHe([IIIII)J
.end method

.method static native vibratorPerformHeParam(III)V
.end method

.method static native vibratorPerformHed([IIIII)J
.end method

.method static native vibratorPerformHedParam(III)V
.end method

.method static native vibratorPerformPattern([I)V
.end method

.method static native vibratorPerformRtp(Ljava/io/FileDescriptor;)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSetDynamicCoef(I)V
.end method

.method static native vibratorSetExternalControl(Z)V
.end method

.method static native vibratorSetF0(I)V
.end method

.method static native vibratorStop()I
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method static native vibratorSupportsExternalControl()Z
.end method


# virtual methods
.method public areEffectsSupported([I)[I
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public arePrimitivesSupported([I)[Z
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Z

    const-wide/16 v1, 0x20

    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    :cond_0
    return-object v0
.end method

.method public cancelNonSelfVibrate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelNonSelfVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    const-string v5, "cancel non-self-initiated vibrate"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    const-string v1, "--cancelVibrate--"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentVibration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callingPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-eq v1, p1, :cond_1

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel vibration does not work, vibration token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v3, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cancel token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_4

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VibratorService"

    const-string v3, "Canceling vibration."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v1, v1, Landroid/os/VibrationEffect$LoopPattern;

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    goto :goto_1

    :cond_5
    :goto_0
    nop

    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

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

.method public hasVibrator()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public isVibrating()Z
    .locals 2

    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4

    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 15

    move-object v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "android.permission.VIBRATE_ALWAYS_ON"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VibratorService"

    const-string v2, "Always-on effects not supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v12, :cond_1

    iget-object v2, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    int-to-long v0, v11

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    monitor-exit v2

    move-object/from16 v13, p5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    instance-of v0, v12, Landroid/os/VibrationEffect$Prebaked;

    if-nez v0, :cond_3

    const-string v0, "VibratorService"

    const-string v2, "Only prebaked effects supported for always-on."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    move-object/from16 v1, p5

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, v13

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    iget-object v1, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v11, v0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    monitor-exit v14

    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move-object/from16 v1, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE_ALWAYS_ON permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVibratorEffect(I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/OpVibratorServiceInjector;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 8

    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array v2, v6, [I

    const/16 v3, 0x24

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_on_touch_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notice_vibrate_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    :cond_0
    new-array v2, v6, [I

    const/16 v3, 0x61

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->motorF0Calibration()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-interface {v3, v4, v6, v5, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4

    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return v3

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

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v8, 0x800000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v0, "android.permission.VIBRATE"

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez v14, :cond_0

    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    instance-of v0, v1, Landroid/os/VibrationEffect$LoopParameter;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$LoopPattern;

    if-nez v0, :cond_1

    const-string v0, "VibratorService"

    const-string v2, "Sending loop parameter needs current vibration is instanceof VibrationEffect.Pattern"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    if-nez v0, :cond_2

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_3
    instance-of v0, v1, Landroid/os/VibrationEffect$LoopParameter;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$LoopParameter;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopParameter;->getAmplitude()I

    move-result v2

    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_4
    instance-of v0, v1, Landroid/os/VibrationEffect$PatternHeParameter;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$PatternHeParameter;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getInterval()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getAmplitude()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getFreq()I

    move-result v4

    sget-boolean v5, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recive data  interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " amplitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformHeParam(III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5
    :try_start_5
    instance-of v0, v1, Landroid/os/VibrationEffect$PatternHedParameter;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$PatternHedParameter;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getInterval()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getAmplitude()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getFreq()I

    move-result v4

    sget-boolean v5, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recive data  interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " amplitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformHedParam(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_7
    :try_start_6
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", attrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by ZenMode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_8
    :try_start_7
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v0, v2, v12}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_9
    move-object/from16 v2, p4

    :try_start_8
    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    iget-object v15, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :try_start_a
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    iget-object v3, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_b

    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "VibratorService"

    const-string v4, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_b
    :try_start_b
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "VibratorService"

    const-string v2, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_d
    :try_start_c
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    const/16 v2, 0x24

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_10

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_10

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "VibratorService"

    const-string v3, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-array v0, v7, [I

    aput v2, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getOldIntensityEffectType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    invoke-static {v0}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    :cond_f
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_10
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v4, v0

    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    if-eq v0, v11, :cond_12

    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    if-eq v4, v0, :cond_12

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_11

    const-string v0, "VibratorService"

    const-string v3, " non-custom effect, reset effect to default "

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {v6}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    :cond_12
    iput v6, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    iput v6, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    invoke-static {v5}, Lcom/android/server/OpVibratorServiceInjector;->markWeakenFlagForDarkMode(Landroid/os/VibrationAttributes;)V

    new-array v0, v7, [I

    aput v2, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v11, v1, v12, v13}, Lcom/android/server/OpVibratorServiceInjector;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v1, v0

    if-nez v1, :cond_13

    :try_start_e
    const-string v0, "VibratorService"

    const-string v2, "The updated vibrator effect should not be empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v18, v8

    goto/16 :goto_3

    :cond_13
    move-object v3, v1

    goto :goto_0

    :cond_14
    move-object v3, v1

    :goto_0
    :try_start_f
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 p3, v3

    move-object/from16 v3, p6

    move/from16 v17, v4

    move-object/from16 v4, p3

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v18, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v16

    :try_start_10
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    iget-object v0, v10, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-le v0, v2, :cond_17

    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_17

    :cond_15
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, attrs= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_3

    :cond_17
    :try_start_12
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_18

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$LoopPattern;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v0, :cond_18

    move-object/from16 v4, p3

    :try_start_14
    instance-of v0, v4, Landroid/os/VibrationEffect$LoopPattern;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    goto :goto_1

    :cond_18
    move-object/from16 v4, p3

    :cond_19
    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v4, p3

    :goto_2
    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v4, p3

    move-object v1, v4

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v4, v3

    move-wide/from16 v18, v8

    move-object v1, v4

    goto :goto_3

    :catchall_7
    move-exception v0

    move-wide/from16 v18, v8

    :goto_3
    :try_start_17
    monitor-exit v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v5

    goto :goto_5

    :catchall_9
    move-exception v0

    goto :goto_3

    :catchall_a
    move-exception v0

    move-wide/from16 v18, v8

    move-object v2, v5

    goto :goto_5

    :catchall_b
    move-exception v0

    goto :goto_4

    :cond_1a
    move-object/from16 v2, p4

    move-wide/from16 v18, v8

    :try_start_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :catchall_c
    move-exception v0

    goto :goto_5

    :catchall_d
    move-exception v0

    move-object/from16 v2, p4

    :goto_4
    move-wide/from16 v18, v8

    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
