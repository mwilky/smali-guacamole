.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$ContentObserverRegister;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$AllowAllRotations;,
        Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final ALLOW_ALL_ROTATIONS_DISABLED:I = 0x0

.field private static final ALLOW_ALL_ROTATIONS_ENABLED:I = 0x1

.field private static final ALLOW_ALL_ROTATIONS_UNDEFINED:I = -0x1

.field private static final REMOTE_ROTATION_TIMEOUT_MS:I = 0x320

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final isDefaultDisplay:Z

.field private mAllowAllRotations:I

.field private mAllowSeamlessRotationDespiteNavBarMoving:Z

.field private final mCarDockRotation:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppOrientation:I

.field private mDefaultFixedToUserRotation:Z

.field private mDeferredRotationPauseCount:I

.field private mDemoHdmiRotation:I

.field private mDemoHdmiRotationLock:Z

.field private mDemoRotation:I

.field private mDemoRotationLock:Z

.field private final mDeskDockRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

.field private final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field private mFixedToUserRotation:I

.field private mIsWaitingForRemoteRotation:Z

.field mLandscapeRotation:I

.field private mLastOrientation:I

.field private final mLidOpenRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field private final mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

.field private mRotatingSeamlessly:Z

.field private mRotation:I

.field private mSeamlessRotationCount:I

.field mSeascapeRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field private mShowRotationSuggestions:I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSupportAutoRotation:Z

.field private final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field private final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDisplayRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;-><init>(Lcom/android/server/wm/DisplayRotation$1;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    new-instance v2, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/wm/DisplayRotation$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$2;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const v0, 0x10e0070

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    const v0, 0x10e002f

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    const v0, 0x10e0049

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    const v0, 0x10e00ce

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    new-instance v1, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$4;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/server/wm/DisplayRotation$5;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/DisplayRotation$5;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayRotation;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayRotation;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->continueRotation(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayRotation;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/DisplayRotation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wm/DisplayRotation;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayRotation;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "true"

    return-object v0

    :cond_1
    const-string v0, "false"

    return-object v0

    :cond_2
    const-string v0, "unknown"

    return-object v0
.end method

.method private continueRotation(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    throw v1

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isAnyPortrait(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_0

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

.method private isLandscapeOrSeascape(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, v0, :cond_0

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

.method private isRotationChoicePossible(I)Z
    .locals 9

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    return v2

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v6

    if-eq v3, v1, :cond_4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    :cond_4
    if-nez v6, :cond_5

    return v2

    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v8, :cond_6

    return v2

    :cond_6
    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v8, :cond_7

    return v2

    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v8, :cond_8

    return v2

    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    return v2

    :cond_9
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v8, :cond_a

    return v2

    :cond_a
    const/4 v8, -0x1

    if-eq p1, v8, :cond_b

    if-eq p1, v5, :cond_b

    packed-switch p1, :pswitch_data_0

    return v2

    :cond_b
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidRotationChoice(I)Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    :cond_2
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$cancelSeamlessRotation$0(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method private needSensorRunning()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_5

    :cond_4
    return v3

    :cond_5
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v2, v3, :cond_6

    move v1, v3

    :cond_6
    return v1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v1
.end method

.method private prepareSeamlessRotation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return-void
.end method

.method private readRotation(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    return v1

    :cond_1
    const/4 v1, 0x2

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectRotationAnimation topFullscreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " rotationAnimation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " forceJumpcut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const v4, 0x10a0087

    const v5, 0x10a0086

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1

    :cond_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v6

    if-gez v6, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isTopLayoutFullscreen()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :cond_5
    if-eq v6, v1, :cond_7

    const/4 v1, 0x2

    if-eq v6, v1, :cond_6

    const/4 v1, 0x3

    if-eq v6, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const v2, 0x10a0088

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    nop

    :goto_3
    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    :cond_1
    return-void
.end method

.method private startRemoteRotation(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/IDisplayWindowRotationController;->onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return-void
.end method

.method private updateOrientationListenerLw()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v4

    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v1

    move v7, v2

    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v8, v8

    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v10, v10, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    move v11, v3

    move v12, v4

    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v15, 0xfdf

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v14, v6

    const/16 v17, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    move/from16 v16, v5

    const/4 v5, 0x0

    const v6, -0x6f5952a9

    invoke-static {v13, v6, v15, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable(Z)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private updateSettings()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const-string v4, "show_rotation_suggestions"

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_0
    nop

    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v8, v4, :cond_1

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    const/4 v3, 0x1

    :cond_1
    const-string v8, "user_rotation"

    invoke-static {v0, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget v9, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v9, v8, :cond_2

    iput v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x1

    :cond_2
    const-string v9, "accelerometer_rotation"

    invoke-static {v0, v9, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    nop

    :goto_1
    nop

    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v6, v5, :cond_4

    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v3, 0x1

    const/4 v1, 0x1

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_5
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method applyCurrentRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    :cond_0
    return-void
.end method

.method cancelSeamlessRotation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$DisplayRotation$XcFKA0vAcDK0Q2CR5rqPDdsewi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$XcFKA0vAcDK0Q2CR5rqPDdsewi8;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishFixedRotationAnimationIfPossible()V

    return-void
.end method

.method configure(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100bd

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_1

    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    :goto_0
    const-string v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    :goto_1
    const-string v1, "persist.demo.hdmirotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    const-string v1, "persist.demo.remoterotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    :goto_2
    const-string v1, "persist.demo.rotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const-string v6, "config.override_forced_orient"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferredRotationPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method freezeRotation(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    return-void
.end method

.method public getCurrentAppOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getLandscapeRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method getLastOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method getRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method hasSeamlessRotatingWindow()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFixedToUserRotation()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLandscapeOrSeascape()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    return v1
.end method

.method isRotatingSeamlessly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return v0
.end method

.method isRotationFrozen()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method isWaitingForRemoteRotation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return v0
.end method

.method public synthetic lambda$onSeamlessRotationTimeout$2$DisplayRotation([ZLcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 5

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    :goto_0
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x2256254a

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishFixedRotationAnimationIfPossible()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method needsUpdate()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onDisplayRemoved()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayRotation$3;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method onSeamlessRotationTimeout()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayRotation$U-vCBL3JcMFTFCBOM9boFL8nSM0;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayRotation$U-vCBL3JcMFTFCBOM9boFL8nSM0;-><init>(Lcom/android/server/wm/DisplayRotation;[Z)V

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    aget-boolean v0, v1, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_0
    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method pause()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    return-void
.end method

.method prepareNormalRotationAnimation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method respectAppRequestedOrientation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method restoreSettings(III)V
    .locals 4

    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_3
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return-void
.end method

.method resume()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_1
    return-void
.end method

.method rotationForOrientation(II)I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v7, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v12, v1

    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    int-to-long v4, v2

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v8, v15

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v15, v11, :cond_0

    const-string v15, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_0
    const-string v15, ""

    :goto_0
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    sget-object v15, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v6, v11

    const/16 v20, 0x2

    aput-object v14, v6, v20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v22, 0x3

    aput-object v23, v6, v22

    const/16 v19, 0x4

    aput-object v18, v6, v19

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v16, 0x5

    aput-object v23, v6, v16

    const/16 v17, 0x6

    aput-object v21, v6, v17

    const v7, 0xc0e4c8a

    const/16 v10, 0x444

    const/4 v11, 0x0

    invoke-static {v15, v7, v10, v11, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v3, 0x3e

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    const-string v4, "Power off return ROTATION_0"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v3

    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    nop

    if-gez v3, :cond_5

    move/from16 v3, p2

    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v8

    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v9

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v11, 0xc

    const/16 v12, 0xb

    if-nez v10, :cond_6

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_7

    :cond_6
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v10, :cond_7

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    goto/16 :goto_7

    :cond_7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_a

    if-nez v8, :cond_8

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v10, :cond_a

    :cond_8
    if-eqz v8, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    :goto_2
    goto/16 :goto_7

    :cond_a
    const/4 v10, 0x1

    if-eq v6, v10, :cond_b

    const/4 v10, 0x3

    if-eq v6, v10, :cond_b

    const/4 v10, 0x4

    if-ne v6, v10, :cond_c

    :cond_b
    if-nez v9, :cond_1d

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v10, :cond_c

    goto/16 :goto_6

    :cond_c
    if-nez v7, :cond_d

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_e

    :cond_d
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v10, :cond_e

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_7

    :cond_e
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_f

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    if-le v10, v4, :cond_f

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    goto/16 :goto_7

    :cond_f
    if-eqz v7, :cond_10

    if-nez v6, :cond_10

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v10, :cond_10

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    goto/16 :goto_7

    :cond_10
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v10, :cond_11

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_7

    :cond_11
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_7

    :cond_12
    const/16 v10, 0xe

    if-ne v1, v10, :cond_13

    move/from16 v4, p2

    goto/16 :goto_7

    :cond_13
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v10, :cond_14

    const/4 v4, -0x1

    goto/16 :goto_7

    :cond_14
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-nez v10, :cond_15

    const/4 v10, 0x2

    if-eq v1, v10, :cond_18

    if-eq v1, v4, :cond_18

    if-eq v1, v12, :cond_18

    if-eq v1, v11, :cond_18

    if-eq v1, v13, :cond_18

    :cond_15
    const/4 v10, 0x4

    if-eq v1, v10, :cond_18

    if-eq v1, v14, :cond_18

    const/4 v10, 0x6

    if-eq v1, v10, :cond_18

    const/4 v10, 0x7

    if-ne v1, v10, :cond_16

    goto :goto_3

    :cond_16
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_17

    const/4 v4, 0x5

    if-eq v1, v4, :cond_17

    if-eqz v1, :cond_17

    if-eq v1, v10, :cond_17

    const/16 v4, 0x8

    if-eq v1, v4, :cond_17

    const/16 v4, 0x9

    if-eq v1, v4, :cond_17

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_7

    :cond_17
    const/4 v4, -0x1

    goto :goto_7

    :cond_18
    :goto_3
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v10, v4, :cond_1a

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x111000d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_4

    :cond_19
    const/4 v4, 0x0

    :goto_4
    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    :cond_1a
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1c

    if-eq v1, v14, :cond_1c

    if-ne v1, v13, :cond_1b

    goto :goto_5

    :cond_1b
    move/from16 v4, p2

    goto :goto_7

    :cond_1c
    :goto_5
    move v4, v3

    goto :goto_7

    :cond_1d
    :goto_6
    if-eqz v9, :cond_1e

    move v4, v3

    goto :goto_7

    :cond_1e
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    :goto_7
    if-eqz v1, :cond_2a

    const/4 v10, 0x1

    if-eq v1, v10, :cond_28

    if-eq v1, v12, :cond_25

    if-eq v1, v11, :cond_22

    packed-switch v1, :pswitch_data_0

    if-ltz v4, :cond_1f

    return v4

    :cond_1f
    const/4 v10, 0x0

    return v10

    :pswitch_0
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_20

    return v4

    :cond_20
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v10

    :pswitch_1
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_21

    return v4

    :cond_21
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v10

    :cond_22
    :pswitch_2
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_23

    return v4

    :cond_23
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_24

    return v2

    :cond_24
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    :cond_25
    :pswitch_3
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_26

    return v4

    :cond_26
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_27

    return v2

    :cond_27
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    :cond_28
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_29

    return v4

    :cond_29
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    :cond_2a
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    return v4

    :cond_2b
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setFixedToUserRotation(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    return-void
.end method

.method setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return-void
.end method

.method setUserRotation(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v2, "user_rotation"

    invoke-static {v0, v2, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_2

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v0, 0x1

    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_3

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v0, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    :cond_4
    return-void
.end method

.method shouldRotateSeamlessly(IIZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v3, :cond_9

    if-ne p2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_0
    return v2

    :cond_9
    :goto_1
    return v2

    :cond_a
    :goto_2
    return v2

    :cond_b
    :goto_3
    return v2
.end method

.method thawRotation()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    return-void
.end method

.method updateOrientation(IZ)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method public updateOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRotationAndSendNewConfigIfChanged()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    :cond_0
    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_6

    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v5, :cond_1

    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x593f0c8c

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v4

    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x11755f60

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v4

    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x7410831a

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v4

    :cond_5
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->isTopFixedOrientationRecentsAnimating()Z

    move-result v6

    if-eqz v6, :cond_6

    return v4

    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x429d369a

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v4

    :cond_8
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v7

    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v8, :cond_9

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-long v14, v7

    int-to-long v9, v2

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    int-to-long v11, v6

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-wide/from16 v23, v14

    int-to-long v13, v5

    sget-object v15, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v22, 0x1

    aput-object v26, v3, v22

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v20, 0x2

    aput-object v26, v3, v20

    const/16 v19, 0x3

    aput-object v18, v3, v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v17, 0x4

    aput-object v26, v3, v17

    const/16 v16, 0x5

    aput-object v21, v3, v16

    const/16 v26, 0x6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v3, v26

    move-object/from16 v25, v8

    move-wide/from16 v27, v9

    const v4, -0x4b4cac2a

    const/16 v8, 0x1114

    const/4 v9, 0x0

    invoke-static {v15, v4, v8, v9, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_a

    int-to-long v3, v2

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v6

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    int-to-long v12, v7

    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v23, 0x0

    aput-object v16, v15, v23

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v20, 0x2

    aput-object v16, v15, v20

    const/16 v16, 0x3

    aput-object v11, v15, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    move-wide/from16 v23, v3

    move-object/from16 v16, v8

    const v3, -0x2da92224

    const/16 v4, 0x111

    const/4 v8, 0x0

    invoke-static {v14, v3, v4, v8, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    if-ne v5, v7, :cond_b

    const/4 v3, 0x0

    return v3

    :cond_b
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_c

    int-to-long v3, v2

    int-to-long v8, v7

    int-to-long v10, v5

    int-to-long v12, v6

    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v15, v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v21, 0x1

    aput-object v17, v15, v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 v21, v2

    const/4 v2, 0x2

    aput-object v17, v15, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v19, 0x3

    aput-object v17, v15, v19

    move-wide/from16 v16, v3

    const v2, -0x6720172c

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-static {v14, v2, v3, v4, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    move/from16 v21, v2

    :goto_0
    invoke-static {v7, v5}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    goto :goto_1

    :cond_d
    const/4 v3, 0x1

    :goto_1
    iput v7, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xb

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareSeamlessRotation()V

    goto :goto_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    :goto_2
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "WindowManager"

    const-string v3, "QuickReply: Avoiding startRemoteRotation during exit "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v0, v5, v2}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    :goto_3
    const/4 v2, 0x1

    return v2
.end method

.method updateUserDependentConfiguration(Landroid/content/res/Resources;)V
    .locals 1

    nop

    const v0, 0x1110013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    return-void
.end method

.method validateRotationAnimation(IIZ)Z
    .locals 4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-ne p1, v3, :cond_1

    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10a0087
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
