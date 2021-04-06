.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;,
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field static final ANIMATION_NONE:I = -0x1

.field static final ANIMATION_STYLEABLE:I = 0x0

.field private static final DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field private static final SHOW_TYPES_FOR_PANIC:[I

.field private static final SHOW_TYPES_FOR_SWIPE:[I

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static isLowRAM:Z

.field private static final isSupportLandPadding:Z

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllowLockscreenWhenOn:Z

.field private volatile mAwake:Z

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private final mDeskDockEnablesAccelerometer:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayRotation:I

.field private volatile mDockMode:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDreamingLockscreen:Z

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceClearedSystemUiFlags:I

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputMethodName:Ljava/lang/String;

.field private mIsFreeformWindowOverlappingWithNavBar:Z

.field private mIsPerfBoostFlingAcquired:Z

.field private volatile mKeyguardDrawComplete:Z

.field private mLastAppearance:I

.field private mLastBehavior:I

.field private mLastDockedAppearance:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastFocusIsFullscreen:Z

.field private mLastFocusIsImmersive:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenAppearance:I

.field private mLastImmersiveMode:Z

.field private mLastNavAllowedHidden:Z

.field private mLastNavTranslucent:Z

.field private mLastNavVisible:Z

.field private final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastNotificationShadeForcesShowingNavigation:Z

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLeftGestureInset:I

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field private mNavButtonForcedVisible:Z

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAlt:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAltPosition:I

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/wm/BarController;

.field private mNavigationBarFrameHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationInCarMode:[I

.field private volatile mNavigationBarLetsThroughTaps:Z

.field private mNavigationBarPosition:I

.field private mNavigationBarWidthForRotationDefault:[I

.field private mNavigationBarWidthForRotationInCarMode:[I

.field private final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mNotificationShade:Lcom/android/server/wm/WindowState;

.field private mPendingPanicGestureUptime:J

.field mPerf:Landroid/util/BoostFramework;

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private mResettingSystemUiFlags:I

.field private mRightGestureInset:I

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field private mShowingDream:Z

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private mStatusBarAlt:Lcom/android/server/wm/WindowState;

.field private mStatusBarAltPosition:I

.field private final mStatusBarController:Lcom/android/server/wm/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private final mUiContext:Landroid/content/Context;

.field private volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x6b

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isSupportLandPadding:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    new-array v1, v0, [I

    aput v0, v1, v3

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x4

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iput v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    new-array v4, v6, [I

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    const-string v4, ""

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    new-instance v6, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v6, v4}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    new-instance v15, Lcom/android/server/wm/BarController;

    const/high16 v9, 0x8000000

    const/high16 v10, 0x20000000

    const/high16 v11, -0x80000000

    const/4 v12, 0x2

    const/16 v13, 0x7e3

    const/high16 v14, 0x8000000

    const v16, 0x8000

    const-string v7, "NavigationBar"

    move-object v6, v15

    move v8, v4

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIIII)V

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111003e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v6, 0x111004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const v6, 0x111008a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v6, :cond_3

    const-string v8, "vendor.perf.gestureflingboost.enable"

    const-string v9, "false"

    invoke-virtual {v6, v8, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    :cond_3
    const-string v6, "ro.config.low_ram"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v8, v0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v11, v0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v9, v10, v8, v11}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    new-instance v8, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v8, v9, v6, v10}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-boolean v8, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_4

    new-instance v8, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_7

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11100c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_3

    :cond_5
    const-string v5, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :cond_6
    :goto_3
    goto :goto_4

    :cond_7
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :goto_4
    new-instance v5, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    new-instance v5, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;

    invoke-direct {v9, v0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v5, v7, v8, v9}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;

    invoke-direct {v8, v5}, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1972(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/DisplayPolicy;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2300(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->checkAltBarSwipeForTransientBars(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int v4, v0, v3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private checkAltBarSwipeForTransientBars(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_1
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    return-object p1

    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v0, p2

    :cond_7
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZZZ)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_6

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-eqz p4, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    :cond_9
    :goto_1
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dispose()V

    :cond_0
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .locals 5

    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    :cond_1
    nop

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    nop

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    and-int v4, p1, p4

    if-nez v4, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    return v1
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/high16 v1, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    const/16 v0, 0x8

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private getAppPackageName()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x400

    :cond_2
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getTransientState(II)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    new-instance v4, Landroid/util/IntArray;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/util/IntArray;-><init>(I)V

    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v0}, Landroid/util/IntArray;-><init>(I)V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    const/high16 v8, 0x8000000

    const/4 v9, 0x1

    move v6, p0

    move v7, p1

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImmersiveMode(I)Z
    .locals 2

    const/16 v0, 0x1800

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isKeyguardOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3

    const/high16 v0, 0x1600000

    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    move v0, v2

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v1

    return v3

    :cond_3
    const/16 v1, 0x1601

    invoke-virtual {p2, v1, p1}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v0, v2

    :goto_2
    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$1(ILcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v7}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v14

    iget v15, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v10

    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    const/4 v7, 0x4

    if-ne v10, v7, :cond_5

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v16

    sub-int v7, v7, v16

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v17

    sub-int v8, v8, v17

    :goto_0
    nop

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v14, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-eqz p3, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    :goto_1
    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    :cond_4
    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x2

    if-ne v10, v4, :cond_8

    iget v4, v9, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v4, v6, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->right:I

    iput v4, v6, Landroid/graphics/Rect;->right:I

    if-eqz v14, :cond_6

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    if-eqz p3, :cond_7

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_7
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    :goto_2
    if-eqz p3, :cond_b

    if-nez p4, :cond_b

    if-nez p5, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    if-ne v10, v4, :cond_b

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v7, v6, v4, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->left:I

    iput v4, v6, Landroid/graphics/Rect;->left:I

    if-eqz v14, :cond_9

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    if-eqz p3, :cond_a

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    :goto_3
    if-eqz p3, :cond_c

    if-nez p4, :cond_c

    if-nez p5, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_b
    :goto_4
    nop

    :cond_c
    :goto_5
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v17, v9

    move-object v9, v5

    move v2, v10

    move-object v10, v6

    move-object v6, v11

    move-object v11, v5

    move/from16 v18, v12

    move-object/from16 v12, v16

    move/from16 v16, v13

    move-object v13, v5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, p7

    if-eqz v7, :cond_d

    iget-object v8, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_d
    iput v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v9, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    :goto_6
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNavigationBar frame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v8}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v8

    return v8
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    iget-object v5, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v6, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v7, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_0
    if-ltz v9, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v3, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    if-eqz v11, :cond_3

    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v15

    iget-object v13, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v14, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v12, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object v12, v15

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v18, v8

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_4

    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v12, " displayHeight="

    const-string v13, " displayWidth="

    const-string v14, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v15, "WindowManager"

    if-gtz v8, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_6

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on left or top of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_a

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_a

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_8
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_9

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_b

    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    :cond_b
    throw v12

    :cond_c
    :goto_2
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_d
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_1

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    :goto_0
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    const v4, 0x40000008    # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result v1

    return v1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 8

    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v1, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v4

    iget-object v5, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method: mDockBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mContentBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method private postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v1, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    return-void

    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)I

    move-result v7

    not-int v7, v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    not-int v7, v7

    and-int/2addr v6, v7

    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v6, v2

    :cond_8
    invoke-interface {v1, v6, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_3

    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    :cond_a
    :goto_3
    goto :goto_6

    :cond_b
    :goto_4
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v2, v3

    :goto_5
    move v1, v2

    if-nez v0, :cond_e

    if-eqz v1, :cond_12

    :cond_e
    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_f

    return-void

    :cond_f
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    :cond_10
    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->showTransient()V

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v2

    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1
    const/16 v2, 0x10

    if-eq p3, v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    move-object v2, v0

    goto :goto_2

    :cond_7
    move-object v2, p8

    :goto_2
    invoke-virtual {p7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_3
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_8

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, p7

    :goto_4
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1

    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1

    const v0, -0x8001

    and-int/2addr p1, v0

    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Lcom/android/server/wm/WindowFrames;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    nop

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/server/wm/InsetsStateController;->computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    throw v2
.end method

.method private supportsPointerLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private updateCurrentUserResources()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method private static updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->removeSource(I)V

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/InsetsSource;->setFrame(IIII)V

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/view/InsetsSource;->setFrame(IIII)V

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/InsetsSource;->setFrame(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    return-void
.end method

.method private updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1

    if-eqz p5, :cond_3

    if-eq p5, p4, :cond_1

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p5, p3, :cond_2

    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 p1, p1, -0x11

    iget-object v0, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p5}, Lcom/android/server/wm/BarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, -0x11

    :cond_3
    return p1
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1

    if-eqz p4, :cond_2

    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, p2, :cond_2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 p1, p1, -0x9

    goto :goto_3

    :cond_3
    :goto_2
    and-int/lit8 p1, p1, -0x9

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    :cond_4
    nop

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/StatusBarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    and-int/lit8 p1, p1, -0x9

    :cond_5
    invoke-static {p2, p1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->forceDarkSystemUI(Lcom/android/server/wm/WindowState;I)I

    move-result p1

    return p1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v9

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v10

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v11, :cond_1

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v13, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    :cond_2
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    move v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_3
    move-object v15, v0

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v15, v0, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v13, v13}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v13}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v16

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-ne v5, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v13

    :goto_4
    move/from16 v20, v1

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x3806

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, -0x40000000    # -2.0f

    or-int/2addr v1, v2

    :cond_6
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v8, v1

    or-int v0, v2, v3

    :cond_7
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    or-int/lit8 v0, v0, 0x8

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    :cond_8
    if-eqz v14, :cond_9

    const v1, -0x40000009    # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    :cond_9
    move/from16 v21, v0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v9

    move v3, v10

    move v4, v11

    move/from16 v22, v5

    move/from16 v5, v18

    move/from16 v23, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZZZZ)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v13

    :goto_6
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v13

    :goto_7
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v13

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v3, 0x1

    :goto_9
    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v1, 0x1

    :cond_e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    move v4, v13

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_11

    if-nez v20, :cond_10

    iget-boolean v5, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_11

    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    move v5, v13

    :goto_b
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_12

    iget-boolean v6, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v6, :cond_12

    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    move v6, v13

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    iget-wide v12, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    move/from16 v27, v1

    move/from16 p3, v2

    const-wide/16 v1, 0x0

    cmp-long v28, v12, v1

    if-eqz v28, :cond_13

    sub-long v12, v24, v12

    const-wide/16 v28, 0x7530

    cmp-long v12, v12, v28

    if-gtz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    :goto_d
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    if-eqz v12, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v28

    if-nez v28, :cond_14

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v28

    if-eqz v28, :cond_14

    iput-wide v1, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    :cond_14
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez v5, :cond_15

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    :goto_e
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v6, :cond_16

    const/4 v2, 0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    if-nez v1, :cond_17

    if-nez v2, :cond_17

    move/from16 v28, v1

    iget-boolean v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_18

    goto :goto_10

    :cond_17
    move/from16 v28, v1

    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    and-int/lit8 v0, v0, -0x8

    :cond_18
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    :goto_11
    move/from16 v29, v2

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_12

    :cond_1a
    const/4 v2, 0x0

    :goto_12
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1b

    goto :goto_13

    :cond_1b
    const/16 v27, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/16 v27, 0x1

    :goto_14
    if-eqz v4, :cond_1d

    if-nez v27, :cond_1d

    move/from16 v30, v1

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move/from16 v31, v2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move/from16 v32, v3

    const/16 v3, 0x7e6

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1e

    and-int/lit8 v0, v0, -0x3

    goto :goto_15

    :cond_1d
    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    :cond_1e
    :goto_15
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v5, v8, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v0

    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const/16 v21, 0x1

    goto :goto_16

    :cond_1f
    const/16 v21, 0x0

    :goto_16
    move/from16 v1, v21

    if-eqz v1, :cond_20

    iget-boolean v2, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    goto :goto_17

    :cond_20
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v2

    :goto_17
    if-eqz v1, :cond_21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    goto :goto_18

    :cond_21
    invoke-direct {v7, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v3

    :goto_18
    if-eqz v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DisplayPolicyInjector;->shouldDisableImmersiveModeConfirm(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22

    const/4 v3, 0x0

    :cond_22
    if-eq v2, v3, :cond_23

    iput-boolean v3, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    move/from16 v21, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    move/from16 v26, v2

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    move/from16 v33, v4

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v34

    move/from16 v35, v5

    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    goto :goto_19

    :cond_23
    move/from16 v21, v1

    move/from16 v26, v2

    move/from16 v33, v4

    move/from16 v35, v5

    :goto_19
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v6, v8, v0}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 4

    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int v3, p0, p2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p4, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p5, p3}, Landroid/util/IntArray;->add(I)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7e3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_3

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v4, v0, v2

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    nop

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_2

    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    nop

    :cond_6
    :goto_2
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 6

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v1, :cond_a

    const/16 v1, 0x7dd

    if-eq v2, v1, :cond_9

    const/16 v1, 0x7df

    if-eq v2, v1, :cond_8

    const/16 v1, 0x7f8

    if-eq v2, v1, :cond_7

    const/16 v1, 0x7d5

    if-eq v2, v1, :cond_3

    const/16 v1, 0x7d6

    if-eq v2, v1, :cond_8

    goto/16 :goto_2

    :cond_3
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0xdac

    if-ltz v1, :cond_4

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    :cond_4
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_8
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_e

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    :cond_e
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": affectsSystemUi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_1

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    :cond_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v3, v6, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    if-eq v6, v4, :cond_4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v4

    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_5

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_b

    if-nez p3, :cond_b

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v7, :cond_b

    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fullscreen window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    new-array v8, v4, [I

    const/16 v9, 0x3c

    aput v9, v8, v5

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    sget-boolean v5, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FP_ACCELERATE: top full app win="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_a

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_a
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_b
    if-eqz v0, :cond_d

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7ef

    if-ne v2, v5, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_e

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x3

    if-nez v2, :cond_f

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-nez p3, :cond_f

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne v6, v5, :cond_f

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    :goto_3
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v8, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {p1, v2}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_11

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    :cond_11
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_12

    if-ne v6, v5, :cond_12

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-static {v4, v5}, Lcom/android/server/wm/OpScreenCompatInjector;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    iget v0, v9, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpQuickPayInjector;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    :cond_0
    iget v10, v8, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    iget v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v12

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    :goto_0
    nop

    const v2, -0x7fff8000

    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    and-int/lit16 v4, v10, 0x800

    if-nez v4, :cond_6

    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v1

    :goto_3
    move v13, v4

    and-int/lit16 v4, v10, 0x1000

    if-nez v4, :cond_8

    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v1

    :goto_5
    move v14, v4

    if-nez v13, :cond_a

    if-eqz v14, :cond_9

    goto :goto_6

    :cond_9
    move v4, v3

    goto :goto_7

    :cond_a
    :goto_6
    move v4, v1

    :goto_7
    move v15, v4

    if-nez v14, :cond_b

    move v4, v1

    goto :goto_8

    :cond_b
    move v4, v3

    :goto_8
    and-int v7, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_9

    :cond_c
    move v2, v3

    :goto_9
    move/from16 v16, v2

    if-nez v16, :cond_d

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v2, v4

    if-eqz v2, :cond_d

    move v2, v1

    goto :goto_a

    :cond_d
    move v2, v3

    :goto_a
    move v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    xor-int/2addr v2, v1

    or-int/2addr v0, v2

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x901

    if-ne v2, v4, :cond_e

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_b

    :cond_e
    move v2, v3

    :goto_b
    move/from16 v17, v2

    if-nez v17, :cond_f

    goto :goto_c

    :cond_f
    move v1, v3

    :goto_c
    and-int v5, v0, v1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    move v4, v7

    move/from16 v19, v5

    move v5, v15

    move/from16 v20, v6

    move/from16 v21, v11

    move v11, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDock rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v1, 0x0

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    :cond_11
    invoke-direct {v8, v9, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    move/from16 v1, v19

    iput-boolean v1, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    iput-boolean v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    iput-boolean v15, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    move/from16 v2, v20

    iput-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExpandedPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_4
    const-string v0, " isKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " top="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-eqz v8, :cond_4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_4

    const-string v8, "QuickReply: mForceStatusBar to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v6, :cond_5

    const/4 v6, 0x0

    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_5

    const-string v8, "QuickReply: notificationShadeForcesShowingNavigation to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_e

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_12

    move v1, v7

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_9

    const-string v4, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    or-int/lit8 v0, v0, 0x1

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    :goto_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_c

    const-string v5, "** HIDING status bar"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_12

    const-string v4, "Status bar already hiding"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    :goto_3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_f

    const-string v8, "Showing status bar: forced"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_10

    or-int/lit8 v0, v0, 0x1

    :cond_10
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    move v5, v4

    :goto_4
    move v1, v5

    if-eqz v6, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    :cond_12
    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_15

    if-nez v1, :cond_14

    or-int/lit8 v0, v0, 0x1

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    or-int/lit8 v0, v0, 0x1

    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_17

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    return v0
.end method

.method public finishScreenTurningOn()Z
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x6f2b8ffc

    const/16 v11, 0x3ff

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v4, v12}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x43f97d42

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    monitor-exit v0

    return v2

    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 2

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {p1, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/policy/OpQuickPayInjector;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method getAlternateNavBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    return v0
.end method

.method getAlternateStatusBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    return v0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    return v0
.end method

.method public getDockMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getFocusedAppOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedWindowState()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getForceShowSystemBars()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    return-object v0
.end method

.method getLayoutHint(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    or-int/2addr v8, v7

    and-int/lit16 v9, v5, 0x100

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    if-eqz v9, :cond_1

    const/high16 v12, 0x10000

    and-int/2addr v12, v5

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v11

    :goto_1
    const/high16 v13, 0x400000

    and-int/2addr v13, v6

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    move v13, v11

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    move v14, v11

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    goto :goto_4

    :cond_4
    move-object v15, v4

    :goto_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    goto :goto_5

    :cond_5
    move-object/from16 v16, v4

    :goto_5
    if-eqz v14, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    :cond_7
    move-object/from16 v17, v4

    :goto_6
    move-object/from16 v18, v17

    if-eqz v14, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_7
    nop

    if-eqz v12, :cond_12

    if-nez v13, :cond_12

    and-int/lit16 v10, v8, 0x200

    if-nez v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v20

    and-int v10, v10, v20

    if-nez v10, :cond_9

    goto :goto_8

    :cond_9
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_a
    :goto_8
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    move v10, v11

    :goto_a
    if-eqz v10, :cond_c

    const/4 v11, 0x0

    goto :goto_b

    :cond_c
    iget-object v11, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    :goto_b
    if-eqz v10, :cond_d

    const/16 v17, 0x0

    move-object/from16 v1, v17

    goto :goto_c

    :cond_d
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_f

    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_e

    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    goto :goto_c

    :cond_e
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    goto :goto_c

    :cond_f
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_10

    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    goto :goto_c

    :cond_10
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    :goto_c
    move/from16 v17, v5

    move-object/from16 v5, v18

    if-eqz v5, :cond_11

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_11
    move/from16 v18, v6

    move-object/from16 v6, p4

    invoke-static {v2, v1, v6}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v19, v1

    move-object/from16 v1, p5

    invoke-static {v2, v11, v1}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1

    :cond_12
    move/from16 v17, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, p4

    if-eqz v9, :cond_13

    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_13
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_d
    if-eqz v5, :cond_14

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_14
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1
.end method

.method public getLidState()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method getStatusBarController()Lcom/android/server/wm/StatusBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isTopLayoutFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$addWindowLw$2$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$addWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method

.method public synthetic lambda$addWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$8$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$getImeSourceFrameProvider$9$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$DisplayPolicy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyDisplayReady$13$DisplayPolicy()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$11$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    invoke-interface {v0, v1, v2, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    :cond_0
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    :cond_1
    invoke-interface {v0, v1, p4, p5, p6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    invoke-interface {v0, v1, p7, p8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZZ)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const v4, -0x30000001

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :goto_0
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 55

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v12, v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    goto/16 :goto_3d

    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_81

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p3

    goto/16 :goto_3d

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v12, v14}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v8, v14, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v0, 0x0

    invoke-static {v0, v14}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v16

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v17

    invoke-static {v14}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v0, v16, v0

    if-eqz v17, :cond_3

    or-int/lit8 v0, v0, 0x4

    move v7, v0

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v3, v5, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v0, v5, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    move/from16 v24, v7

    iget-object v7, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 p3, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    invoke-direct {v11, v14}, Lcom/android/server/wm/DisplayPolicy;->opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v18

    move-object/from16 v26, v5

    if-eqz v18, :cond_4

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v25, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move/from16 v28, v0

    and-int/lit16 v0, v8, 0xf0

    const/16 v29, 0x0

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v18

    if-eqz v18, :cond_5

    iget-object v5, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v0, 0x30

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    and-int/lit16 v0, v10, 0x100

    move/from16 v31, v8

    const/16 v8, 0x100

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    move/from16 v32, v0

    const/high16 v0, 0x10000

    and-int v8, v10, v0

    if-ne v8, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    move/from16 v33, v0

    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v8, 0x7db

    const/4 v0, 0x4

    if-ne v15, v8, :cond_b

    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    iget v8, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v8, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/16 v18, 0x0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_9

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    move/from16 v20, v8

    iget v8, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-direct {v11, v8, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v21

    if-eqz v21, :cond_8

    move/from16 v21, v0

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v22, v8

    const v8, 0x506009b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v8, v0

    move/from16 v18, v8

    goto :goto_6

    :cond_8
    move/from16 v21, v0

    move/from16 v22, v8

    goto :goto_6

    :cond_9
    move/from16 v20, v8

    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->isSupportLandPadding:Z

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x506009b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move/from16 v18, v0

    goto :goto_7

    :cond_a
    :goto_6
    nop

    :goto_7
    if-lez v18, :cond_b

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v0, Landroid/graphics/Rect;->top:I

    :cond_b
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const-string v8, "WindowManager"

    move-object/from16 v37, v7

    const/4 v7, 0x2

    if-ne v0, v7, :cond_25

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v38

    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v7

    move/from16 v39, v0

    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move/from16 v40, v15

    const/4 v15, 0x0

    invoke-static {v15, v15, v15, v15}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v20

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v15

    const/16 v21, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v41, v2

    move-object/from16 v2, v20

    :goto_8
    move/from16 v42, v10

    if-ltz v15, :cond_11

    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v10

    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move-object/from16 v43, v1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-nez v1, :cond_c

    move-object/from16 v44, v7

    goto :goto_a

    :cond_c
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v17, :cond_d

    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v44, v7

    const/16 v7, 0xd

    if-ne v10, v7, :cond_f

    sget-boolean v7, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: Avoid IME adjust for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    move-object/from16 v44, v7

    goto :goto_9

    :cond_e
    move-object/from16 v44, v7

    :cond_f
    :goto_9
    nop

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v7

    invoke-virtual {v1, v0, v7}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    :cond_10
    :goto_a
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v42

    move-object/from16 v1, v43

    move-object/from16 v7, v44

    goto :goto_8

    :cond_11
    move-object/from16 v43, v1

    move-object/from16 v44, v7

    and-int/lit8 v1, v38, 0x1

    if-eqz v1, :cond_12

    iget v1, v2, Landroid/graphics/Insets;->left:I

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    and-int/lit8 v7, v38, 0x2

    if-eqz v7, :cond_13

    iget v7, v2, Landroid/graphics/Insets;->top:I

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    :goto_c
    and-int/lit8 v10, v38, 0x4

    if-eqz v10, :cond_14

    iget v10, v2, Landroid/graphics/Insets;->right:I

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    :goto_d
    and-int/lit8 v15, v38, 0x8

    if-eqz v15, :cond_15

    iget v15, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_e

    :cond_15
    const/4 v15, 0x0

    :goto_e
    move-object/from16 v45, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v10

    move/from16 v46, v10

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v15

    invoke-virtual {v3, v1, v7, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v13, :cond_19

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v9

    if-eqz v2, :cond_17

    iget-object v2, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    const/16 v10, 0xd

    invoke-virtual {v2, v10}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v47, v0

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v10}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_f

    :cond_16
    move-object/from16 v47, v0

    goto :goto_f

    :cond_17
    move-object/from16 v47, v0

    :goto_f
    const/16 v0, 0x30

    if-eq v5, v0, :cond_18

    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    :goto_10
    move-object/from16 v2, v43

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v10, v42

    goto :goto_12

    :cond_19
    move-object/from16 v47, v0

    move-object/from16 v2, v43

    move/from16 v10, v42

    and-int/lit16 v0, v10, 0x100

    if-nez v0, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_11

    :cond_1a
    move-object v0, v3

    :goto_11
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_12
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1b

    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_13

    :cond_1b
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    :goto_13
    move/from16 v42, v7

    move-object/from16 v7, v41

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    move/from16 v41, v1

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 p3, v15

    move/from16 v0, v40

    const/16 v15, 0x7db

    if-ne v0, v15, :cond_1c

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v23}, Lcom/android/server/wm/OpQuickReplyInjector;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    goto :goto_14

    :cond_1c
    if-eqz v17, :cond_1d

    const/4 v13, 0x0

    iput v13, v7, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_1d
    const/4 v13, 0x0

    :goto_14
    const/16 v15, 0x7db

    if-ne v0, v15, :cond_21

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    move-object/from16 v20, v8

    const-string v8, "com.iflytek.inputmethod.oneplus"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x2

    if-ne v15, v8, :cond_1f

    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v13, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v15

    iget v15, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    const/16 v15, 0x438

    if-gt v13, v15, :cond_1e

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10501b1

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v19, v8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v15

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    :cond_1e
    move-object/from16 v19, v8

    goto :goto_15

    :cond_1f
    move/from16 v18, v15

    goto :goto_15

    :cond_20
    move-object/from16 v20, v8

    goto :goto_15

    :cond_21
    move-object/from16 v20, v8

    :goto_15
    const/16 v8, 0x7f6

    if-ne v0, v8, :cond_22

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "ScreenDecorOverlayExpand"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    :cond_22
    const/16 v8, 0x7d3

    if-ne v0, v8, :cond_24

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "com.android.nfc"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_23
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_24
    move-object/from16 v13, p2

    move v15, v0

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object/from16 v24, v37

    move-object v7, v6

    move-object v6, v4

    goto/16 :goto_30

    :cond_25
    move-object v7, v2

    move-object/from16 v20, v8

    move v0, v15

    move-object v2, v1

    move-object/from16 v1, p3

    const/16 v8, 0x7db

    if-ne v0, v8, :cond_2b

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iput v13, v2, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_27

    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v15, v13, :cond_27

    invoke-direct {v11, v13}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    if-eqz v13, :cond_27

    iget v13, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_26

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    iput v13, v2, Landroid/graphics/Rect;->right:I

    iput v13, v7, Landroid/graphics/Rect;->right:I

    iput v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_16

    :cond_26
    const/4 v8, 0x1

    if-ne v13, v8, :cond_28

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_16

    :cond_27
    const/4 v15, 0x2

    :cond_28
    :goto_16
    iget v8, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v13, 0x4

    if-ne v8, v13, :cond_2a

    iget v8, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v13

    invoke-direct {v11, v8, v13}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    invoke-direct {v11, v8, v13}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_29

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v15, v18

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v8

    move-object/from16 v15, v37

    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v15, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    :cond_29
    move/from16 v19, v8

    move-object/from16 v15, v37

    goto :goto_17

    :cond_2a
    move-object/from16 v15, v37

    :goto_17
    const/16 v8, 0x50

    iput v8, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    :cond_2b
    move-object/from16 v15, v37

    const/16 v8, 0x7ef

    if-ne v0, v8, :cond_2e

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v13, 0x10

    if-eq v5, v13, :cond_2c

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    :cond_2c
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_18
    const/16 v13, 0x30

    if-eq v5, v13, :cond_2d

    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    :cond_2d
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    :cond_2e
    const/16 v13, 0x7dd

    if-ne v0, v13, :cond_2f

    invoke-direct {v11, v6, v4, v3, v7}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    :cond_2f
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v8, :cond_63

    const/16 v8, 0x7f8

    if-ne v0, v8, :cond_30

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_2f

    :cond_30
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v13, 0x1

    if-lt v0, v13, :cond_31

    const/16 v13, 0x63

    if-gt v0, v13, :cond_31

    const/4 v13, 0x1

    goto :goto_19

    :cond_31
    const/4 v13, 0x0

    :goto_19
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v12, v8, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_32

    const/4 v8, 0x1

    goto :goto_1a

    :cond_32
    const/4 v8, 0x0

    :goto_1a
    move/from16 v21, v8

    if-eqz v13, :cond_34

    if-nez v21, :cond_34

    and-int/lit8 v8, v24, 0x4

    if-nez v8, :cond_33

    and-int/lit16 v8, v10, 0x400

    if-nez v8, :cond_33

    const/high16 v8, 0x4000000

    and-int/2addr v8, v10

    if-nez v8, :cond_33

    const/high16 v8, -0x80000000

    and-int v22, v10, v8

    if-nez v22, :cond_33

    const/high16 v8, 0x20000

    and-int/2addr v8, v9

    if-nez v8, :cond_33

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v1, Landroid/graphics/Rect;->top:I

    :cond_33
    const/high16 v8, 0x8000000

    and-int/2addr v8, v10

    if-nez v8, :cond_34

    and-int/lit8 v8, v24, 0x2

    if-nez v8, :cond_34

    const/high16 v8, -0x80000000

    and-int v22, v10, v8

    if-nez v22, :cond_34

    const/high16 v22, 0x20000

    and-int v22, v9, v22

    if-nez v22, :cond_34

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v1, Landroid/graphics/Rect;->right:I

    :cond_34
    const-string v8, "layoutWindowLw("

    if-eqz v32, :cond_46

    if-eqz v33, :cond_46

    sget-boolean v37, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v37, :cond_35

    move/from16 v40, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v20

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_35
    move/from16 v40, v0

    move-object/from16 v8, v20

    :goto_1b
    move-object/from16 v0, p2

    if-eqz v0, :cond_36

    const/16 v18, 0x1

    move-object/from16 v27, v1

    move/from16 v20, v13

    move-object/from16 v37, v15

    move/from16 v15, v40

    const/4 v1, 0x0

    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v43, v2

    move v2, v10

    move-object/from16 v35, v3

    move v3, v5

    move-object/from16 v38, v4

    move-object/from16 v4, p2

    move v12, v5

    move-object/from16 v48, v26

    move-object/from16 v26, v14

    const/4 v14, 0x1

    move/from16 v5, v18

    move-object/from16 v30, v6

    move-object/from16 v6, v38

    move-object/from16 v41, v7

    move/from16 v14, v24

    move-object/from16 v24, v37

    move-object/from16 v7, v35

    move-object/from16 v49, v8

    move-object/from16 v8, v41

    move/from16 v34, v9

    move-object/from16 v9, v43

    move v13, v10

    move-object/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move v8, v13

    move-object/from16 v7, v30

    move-object/from16 v10, v35

    move-object/from16 v9, v41

    move-object/from16 v5, v43

    move-object/from16 v1, v49

    move-object/from16 v13, p2

    goto/16 :goto_30

    :cond_36
    move-object/from16 v27, v1

    move-object/from16 v43, v2

    move-object/from16 v35, v3

    move-object/from16 v38, v4

    move v12, v5

    move-object/from16 v30, v6

    move-object/from16 v41, v7

    move-object/from16 v49, v8

    move/from16 v34, v9

    move/from16 v20, v13

    move-object/from16 v48, v26

    move v13, v10

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object/from16 v24, v15

    move/from16 v15, v40

    const/16 v0, 0x7f9

    if-eq v15, v0, :cond_3c

    const/16 v0, 0x7e1

    if-ne v15, v0, :cond_37

    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    goto :goto_1e

    :cond_37
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    if-lt v15, v0, :cond_38

    const/16 v0, 0x7cf

    if-le v15, v0, :cond_3a

    :cond_38
    const/16 v0, 0x7e4

    if-eq v15, v0, :cond_3a

    const/16 v0, 0x7d9

    if-ne v15, v0, :cond_39

    goto :goto_1c

    :cond_39
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    goto :goto_1d

    :cond_3a
    :goto_1c
    move-object/from16 v10, v30

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v35

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v7, v38

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v6, v49

    goto/16 :goto_22

    :cond_3b
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    :goto_1d
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v6, v49

    goto :goto_22

    :cond_3c
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    :goto_1e
    if-eqz v28, :cond_3d

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_1f

    :cond_3d
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_1f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    if-eqz v28, :cond_3e

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_20

    :cond_3e
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_20
    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    if-eqz v28, :cond_3f

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_21

    :cond_3f
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_21
    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v49

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_40
    move-object/from16 v6, v49

    :goto_22
    and-int/lit16 v0, v13, 0x400

    if-nez v0, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v5, v41

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    :cond_41
    move-object/from16 v5, v41

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_43

    const/16 v0, 0x10

    if-eq v12, v0, :cond_42

    goto :goto_23

    :cond_42
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    :cond_43
    :goto_23
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    :cond_44
    move-object/from16 v5, v41

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_24
    invoke-direct {v11, v14, v13, v5, v10}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_45

    const/16 v0, 0x30

    if-eq v12, v0, :cond_45

    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v4, v43

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move v8, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_30

    :cond_45
    move-object/from16 v4, v43

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move v8, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_30

    :cond_46
    move-object/from16 v27, v1

    move v12, v5

    move-object v5, v7

    move/from16 v34, v9

    move-object/from16 v48, v26

    move-object v9, v3

    move-object v7, v4

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v4, v2

    move-object/from16 v24, v15

    move v15, v0

    move/from16 v54, v10

    move-object v10, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v54

    if-nez v32, :cond_51

    and-int/lit16 v0, v14, 0x600

    if-eqz v0, :cond_47

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move/from16 v50, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_28

    :cond_47
    move v3, v13

    move-object/from16 v13, p2

    if-eqz v13, :cond_49

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): attached to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v50, v3

    move v3, v12

    move-object/from16 v43, v4

    move-object/from16 v4, p2

    move-object/from16 v41, v5

    move v5, v8

    move-object v8, v6

    move-object v6, v7

    move-object/from16 v51, v7

    move-object v7, v9

    move-object/from16 v52, v8

    move-object/from16 v8, v41

    move-object/from16 v53, v9

    move-object/from16 v9, v43

    move-object/from16 v30, v10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, v30

    move-object/from16 v9, v41

    move-object/from16 v5, v43

    move/from16 v8, v50

    move-object/from16 v6, v51

    move-object/from16 v1, v52

    move-object/from16 v10, v53

    goto/16 :goto_30

    :cond_49
    move/from16 v50, v3

    move-object/from16 v43, v4

    move-object/from16 v41, v5

    move-object/from16 v52, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v30, v10

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): normal window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v52

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_4a
    move-object/from16 v1, v52

    :goto_25
    const/16 v0, 0x7f9

    if-ne v15, v0, :cond_4b

    move-object/from16 v7, v30

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v41

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v53

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v51

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v5, v43

    move/from16 v8, v50

    goto/16 :goto_30

    :cond_4b
    move-object/from16 v7, v30

    move-object/from16 v9, v41

    move-object/from16 v6, v51

    move-object/from16 v10, v53

    const/16 v0, 0x7d5

    if-eq v15, v0, :cond_50

    const/16 v0, 0x7d3

    if-ne v15, v0, :cond_4c

    move-object/from16 v5, v43

    goto :goto_27

    :cond_4c
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_4d
    const/16 v0, 0x10

    if-eq v12, v0, :cond_4e

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_4e
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_26
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_4f

    const/16 v0, 0x30

    if-eq v12, v0, :cond_4f

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v5, v43

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    :cond_4f
    move-object/from16 v5, v43

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    :cond_50
    move-object/from16 v5, v43

    :goto_27
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    :cond_51
    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move/from16 v50, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    :goto_28
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): IN_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/16 v0, 0x7f9

    if-eq v15, v0, :cond_5f

    const/16 v0, 0x7e1

    if-ne v15, v0, :cond_53

    move/from16 v8, v50

    goto/16 :goto_2d

    :cond_53
    const/16 v0, 0x7e3

    if-eq v15, v0, :cond_5e

    const/16 v0, 0x7e8

    if-ne v15, v0, :cond_54

    move/from16 v8, v50

    goto/16 :goto_2c

    :cond_54
    const/16 v0, 0x7df

    if-eq v15, v0, :cond_56

    const/16 v0, 0x7f4

    if-eq v15, v0, :cond_56

    const/16 v0, 0x901

    if-eq v15, v0, :cond_56

    const/16 v0, 0x900

    if-eq v15, v0, :cond_56

    const/16 v0, 0x8ff

    if-eq v15, v0, :cond_56

    const/16 v0, 0x903

    if-eq v15, v0, :cond_56

    const/16 v0, 0x902

    if-ne v15, v0, :cond_55

    goto :goto_29

    :cond_55
    move/from16 v8, v50

    goto :goto_2a

    :cond_56
    :goto_29
    move/from16 v8, v50

    and-int/lit16 v0, v8, 0x400

    if-eqz v0, :cond_57

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    :cond_57
    :goto_2a
    const/16 v0, 0x7e5

    if-ne v15, v0, :cond_58

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    :cond_58
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_5a

    const/16 v0, 0x7f8

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7d5

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7f2

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7f1

    if-eq v15, v0, :cond_59

    const/4 v0, 0x1

    if-lt v15, v0, :cond_5a

    const/16 v0, 0x7cf

    if-gt v15, v0, :cond_5a

    :cond_59
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    :cond_5a
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_5d

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_5c

    const/16 v0, 0x10

    if-eq v12, v0, :cond_5b

    goto :goto_2b

    :cond_5b
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    :cond_5c
    :goto_2b
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    :cond_5d
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2e

    :cond_5e
    move/from16 v8, v50

    :goto_2c
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Laying out navigation bar window: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_5f
    move/from16 v8, v50

    :goto_2d
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v28, :cond_60

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    :cond_60
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_2e
    invoke-direct {v11, v14, v8, v9, v7}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_62

    const/16 v0, 0x30

    if-eq v12, v0, :cond_62

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_30

    :cond_62
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    :cond_63
    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    :goto_2f
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    if-ne v12, v0, :cond_64

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_66

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_30

    :cond_64
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_65

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    :cond_65
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_66

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    :cond_66
    :goto_30
    move/from16 v18, v12

    move-object/from16 v12, p1

    invoke-static {v12, v7}, Lcom/android/server/wm/OpScreenCompatInjector;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v4

    if-eqz v13, :cond_67

    if-nez v32, :cond_67

    const/4 v0, 0x1

    goto :goto_31

    :cond_67
    const/4 v0, 0x0

    :goto_31
    move/from16 v19, v0

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_6a

    and-int/lit8 v0, v16, 0x4

    if-nez v0, :cond_6a

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_68

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_32

    :cond_68
    const/4 v3, 0x0

    :cond_69
    move v0, v3

    goto :goto_33

    :cond_6a
    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_32
    const/4 v0, 0x1

    :goto_33
    move/from16 v20, v0

    and-int/lit8 v0, v16, 0x2

    if-nez v0, :cond_6c

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-ne v0, v2, :cond_6b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_34

    :cond_6b
    const/4 v0, 0x0

    goto :goto_35

    :cond_6c
    :goto_34
    const/4 v0, 0x1

    :goto_35
    move/from16 v21, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_6d

    if-eqz v32, :cond_6d

    const/4 v0, 0x1

    if-eq v15, v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_36

    :cond_6d
    const/4 v0, 0x0

    :goto_36
    move/from16 v22, v0

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7a

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    if-ne v4, v2, :cond_6f

    iget v2, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v3, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    if-ge v2, v3, :cond_6e

    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const v3, 0x7fffffff

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_37

    :cond_6e
    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_6f
    const/high16 v2, -0x80000000

    :goto_37
    if-eqz v32, :cond_71

    if-eqz v33, :cond_71

    if-nez v20, :cond_71

    if-eqz v4, :cond_70

    const/4 v3, 0x1

    if-ne v4, v3, :cond_71

    :cond_70
    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_71
    if-eqz v32, :cond_77

    if-eqz v33, :cond_77

    if-nez v21, :cond_77

    if-eqz v4, :cond_73

    const/4 v3, 0x1

    if-ne v4, v3, :cond_72

    goto :goto_38

    :cond_72
    const/4 v3, 0x4

    goto :goto_39

    :cond_73
    const/4 v3, 0x1

    :goto_38
    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v2, v3, :cond_76

    const/4 v3, 0x2

    if-eq v2, v3, :cond_75

    const/4 v3, 0x4

    if-eq v2, v3, :cond_74

    goto :goto_39

    :cond_74
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_39

    :cond_75
    const v2, 0x7fffffff

    const/4 v3, 0x4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_39

    :cond_76
    const/4 v3, 0x4

    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_39

    :cond_77
    const/4 v3, 0x4

    :goto_39
    const/16 v2, 0x7db

    if-ne v15, v2, :cond_78

    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_78

    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_78
    if-nez v19, :cond_79

    if-nez v22, :cond_79

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move-object/from16 v3, v48

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_3a

    :cond_79
    move-object/from16 v3, v48

    :goto_3a
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_3b

    :cond_7a
    move-object/from16 v3, v48

    :goto_3b
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpScreenCompatInjector;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :cond_7b
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_7c

    const/16 v0, 0x7da

    if-eq v15, v0, :cond_7c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7c

    const/16 v0, -0x2710

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x2710

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x7dd

    if-eq v15, v0, :cond_7c

    const/16 v0, -0x2710

    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x2710

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    :cond_7c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": sim=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attach="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p3, v4

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x0

    aput-object v2, v4, v23

    const-string v2, " flags=0x%08x"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dcf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_7d
    move/from16 p3, v4

    :goto_3c
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    :cond_7e
    const/16 v23, 0x0

    move-object v0, v6

    move-object v1, v10

    const/16 v4, 0x7db

    move-object v2, v9

    move-object/from16 v30, v3

    move-object v3, v5

    move/from16 v35, p3

    move/from16 v42, v8

    move v8, v4

    move-object/from16 v4, v24

    move-object/from16 v36, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v6

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/OpScreenCompatInjector;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v12, v7}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    if-ne v15, v8, :cond_7f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-direct {v11, v12, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    :cond_7f
    const/16 v0, 0x7ef

    if-ne v15, v0, :cond_80

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-direct {v11, v12, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    :cond_80
    return-void

    :cond_81
    move-object/from16 v0, p3

    :goto_3d
    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    :cond_0
    if-ne p3, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x105024a

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050249

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501af

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501b1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ac

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ad

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x10501b4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    const v7, 0x10e008f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    const v7, 0x11100a7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    const v7, 0x11100a4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    const v7, 0x10501ae

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    sget-boolean v7, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->onConfigurationChanged()V

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->onConfigurationChanged()V

    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method onPowerKeyDown(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    return-void
.end method

.method release()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_4

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_2

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_5

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectAnimation in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": transit="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const v5, 0x10a002d

    const v6, 0x10a002e

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v1, v3, :cond_4

    if-eq v2, v10, :cond_3

    if-ne v2, v9, :cond_1

    goto :goto_0

    :cond_1
    if-eq v2, v11, :cond_2

    if-ne v2, v7, :cond_22

    :cond_2
    return v5

    :cond_3
    :goto_0
    return v6

    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v12, 0x10a0029

    const v13, 0x10a002b

    const v14, 0x10a0026

    const v15, 0x10a002a

    const v16, 0x10a0027

    const v17, 0x10a002c

    if-ne v1, v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_5

    return v8

    :cond_5
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v9, :cond_a

    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    :cond_6
    if-eq v2, v11, :cond_7

    if-ne v2, v7, :cond_22

    :cond_7
    return v14

    :cond_8
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x10a0028

    return v3

    :cond_9
    return v16

    :cond_a
    if-ne v3, v10, :cond_e

    if-eq v2, v10, :cond_d

    if-ne v2, v9, :cond_b

    goto :goto_2

    :cond_b
    if-eq v2, v11, :cond_c

    if-ne v2, v7, :cond_22

    :cond_c
    return v13

    :cond_d
    :goto_2
    return v17

    :cond_e
    if-ne v3, v11, :cond_22

    if-eq v2, v10, :cond_11

    if-ne v2, v9, :cond_f

    goto :goto_3

    :cond_f
    if-eq v2, v11, :cond_10

    if-ne v2, v7, :cond_22

    :cond_10
    return v12

    :cond_11
    :goto_3
    return v15

    :cond_12
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_13

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_22

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_14

    return v8

    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_15

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_4

    :cond_15
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    :goto_4
    if-eq v2, v10, :cond_17

    if-ne v2, v9, :cond_16

    goto :goto_5

    :cond_16
    move/from16 v18, v8

    goto :goto_6

    :cond_17
    :goto_5
    move/from16 v18, v11

    :goto_6
    if-eq v2, v11, :cond_19

    if-ne v2, v7, :cond_18

    goto :goto_7

    :cond_18
    move v7, v8

    goto :goto_8

    :cond_19
    :goto_7
    move v7, v11

    :goto_8
    if-eq v3, v11, :cond_20

    if-eq v3, v10, :cond_1e

    if-eq v3, v9, :cond_1c

    const/16 v9, 0x8

    if-eq v3, v9, :cond_1a

    goto :goto_9

    :cond_1a
    if-eqz v18, :cond_1b

    return v6

    :cond_1b
    if-eqz v7, :cond_22

    return v5

    :cond_1c
    if-eqz v18, :cond_1d

    return v16

    :cond_1d
    if-eqz v7, :cond_22

    return v14

    :cond_1e
    if-eqz v18, :cond_1f

    return v17

    :cond_1f
    if-eqz v7, :cond_22

    return v13

    :cond_20
    if-eqz v18, :cond_21

    return v15

    :cond_21
    if-eqz v7, :cond_22

    return v12

    :cond_22
    :goto_9
    const/4 v3, 0x5

    if-ne v2, v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, -0x1

    return v3

    :cond_23
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_24

    const-string v3, "**** STARTING EXIT"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const v3, 0x10a0013

    return v3

    :cond_25
    return v8
.end method

.method public setAwake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return-void
.end method

.method public setDockMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return-void
.end method

.method setForceShowSystemBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setHasNavigationBar(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHasNavigationBar to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 3

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public setLidState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v0}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    return-void
.end method

.method public stopLongshotConnection()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public switchUser()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    return-void
.end method

.method systemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public takeScreenshot(II)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_1

    move v8, v7

    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    move v7, v0

    move v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/OpDisplayPolicyInjector;->takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V

    :cond_2
    return-void
.end method

.method topAppHidesStatusBar()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit16 v5, v3, 0x400

    if-nez v5, :cond_3

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_0

    const v1, 0x11100a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    return-void
.end method

.method updateHideNavInputEventReceiver()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    instance-of v4, v3, Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v6

    :goto_3
    nop

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->behavior:I

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v1, v7

    :goto_4
    const-string v8, "WindowManager"

    if-nez v6, :cond_6

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    const-string v11, "nav_input_consumer"

    invoke-virtual {v2, v9, v11, v10}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    const-string v2, "nav_input_consumer created."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_6

    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-virtual {v7, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    const-string v2, "nav_input_consumer dismissed."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return-void
.end method

.method updateSystemUiVisibilityLw()I
    .locals 32

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    const/4 v6, 0x0

    if-nez v0, :cond_1

    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_4
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_2
    move-object v0, v2

    if-nez v0, :cond_5

    return v6

    :cond_5
    move-object/from16 v16, v0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v0

    :goto_3
    move-object/from16 v14, v16

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    invoke-static {v14, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget v2, v15, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget v2, v15, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget-boolean v2, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_7

    const/4 v2, 0x7

    invoke-static {v14, v2}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    move v11, v1

    goto :goto_4

    :cond_7
    move v11, v1

    :goto_4
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v10

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-nez v1, :cond_8

    invoke-direct {v15, v6, v0, v0}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    move v9, v0

    goto :goto_5

    :cond_8
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    move v9, v0

    :goto_5
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v17

    const/4 v0, 0x3

    if-eqz v17, :cond_9

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    goto :goto_6

    :cond_9
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_6
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v17, :cond_a

    const/4 v2, 0x4

    goto :goto_7

    :cond_a
    move v2, v7

    :goto_7
    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v6, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {v15, v14, v1, v11}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v8

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_b

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v1, :cond_b

    move v13, v7

    goto :goto_8

    :cond_b
    move v13, v6

    :goto_8
    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v1

    and-int/lit8 v18, v1, 0x3

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    or-int v0, v0, v18

    goto :goto_9

    :cond_c
    move-object/from16 v19, v5

    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v0

    :goto_9
    nop

    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int/2addr v1, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_f

    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v14, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v6}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v7}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    :cond_e
    move v3, v6

    goto :goto_b

    :cond_f
    :goto_a
    move v3, v7

    :goto_b
    invoke-static {v3}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->setFullscreenScene(Z)V

    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit16 v5, v12, 0x1800

    if-nez v5, :cond_11

    if-eq v4, v7, :cond_11

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v20, v6

    goto :goto_d

    :cond_11
    const/4 v5, 0x2

    :goto_c
    move/from16 v20, v7

    :goto_d
    move/from16 v21, v20

    if-nez v1, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v7, v0, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    if-ne v7, v10, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    if-ne v7, v9, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v7, v4, :cond_12

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v7, v3, :cond_12

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    move/from16 v5, v21

    if-ne v7, v5, :cond_13

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    return v6

    :cond_12
    move/from16 v5, v21

    :cond_13
    iget v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v12, v6}, Lcom/android/server/wm/DisplayPolicy;->getTransientState(II)Landroid/util/Pair;

    move-result-object v23

    iput v12, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    iput v0, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    iput v10, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    iput v9, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    iput v4, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    iput-boolean v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    iput-boolean v5, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v6

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v24, v2

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v6

    if-eqz v17, :cond_14

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/view/AppearanceRegion;

    move/from16 v22, v4

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v10, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    const/16 v21, 0x0

    aput-object v4, v6, v21

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v9, v2}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    move-object/from16 v25, v2

    const/4 v2, 0x1

    aput-object v4, v6, v2

    move-object v2, v6

    goto :goto_e

    :cond_14
    move-object/from16 v25, v2

    move/from16 v22, v4

    const/4 v2, 0x1

    const/16 v21, 0x0

    new-array v2, v2, [Lcom/android/internal/view/AppearanceRegion;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v10, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v4, v2, v21

    :goto_e
    move v4, v12

    move-object v12, v2

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    move/from16 v20, v1

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;

    move-object/from16 v26, v6

    move-object v6, v1

    move-object/from16 v21, v7

    move-object/from16 v7, p0

    move-object/from16 v27, v8

    move v8, v4

    move/from16 v28, v9

    move-object v9, v2

    move/from16 v29, v10

    move-object/from16 v10, v23

    move/from16 v30, v11

    move v11, v0

    move-object/from16 v31, v14

    move v14, v3

    move v15, v5

    invoke-direct/range {v6 .. v15}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;-><init>(Lcom/android/server/wm/DisplayPolicy;ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V

    move-object/from16 v6, v26

    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v20
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 7

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "DisplayPolicy"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, -0x7

    if-eq v0, v3, :cond_7

    const/16 v3, 0x7de

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7e1

    if-eq v0, v3, :cond_5

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x7e8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7f1

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    return v4

    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v0, -0xa

    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return v4

    :cond_a
    :goto_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_12

    aget v5, v0, v2

    if-eqz v5, :cond_e

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_d
    return v4

    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    return v4

    :cond_11
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_12
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
