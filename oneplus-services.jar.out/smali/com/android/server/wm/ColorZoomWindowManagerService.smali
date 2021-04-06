.class public Lcom/android/server/wm/ColorZoomWindowManagerService;
.super Lcom/oplus/zoomwindow/IOplusZoomWindowManager$Stub;
.source ""

# interfaces
.implements Lcom/android/server/wm/IColorZoomWindowManager;
.implements Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ColorZoomWindowManagerService$vdb;
    }
.end annotation


# static fields
.field protected static final BOTTOM_LIMIT_EDGE_OF_MOVE_ZOOM_LANDSCAPE:I = 0x32

.field protected static final BOTTOM_LIMIT_EDGE_OF_MOVE_ZOOM_PORTRAIT:I = 0x32

.field private static DEBUG_ANIMATION:Z = true

.field private static DEBUG_CORNER_DIUS:Z = true

.field private static DEBUG_INPUT:Z = true

.field private static DEBUG_LIFE_CYCLE:Z = true

.field protected static final DIM_AMOUNT:F = 0.4f

.field private static final DSDX:F = 1.0f

.field private static final DSDY:F = 1.0f

.field private static final DTDX:F = 0.0f

.field private static final DTDY:F = 0.0f

.field private static final ERROR_DEFAULT:I = -0x1

.field private static final ERROR_INPUT_METHOD_MANAGER_INTERNAL_NOTNULL:I = -0x2

.field private static final ERROR_MINIMIZEDDOCKED_STACK:I = -0x3

.field private static final ERROR_TASKSTACK_ISNULL:I = -0x4

.field private static final FLAG_FOR_ZOOM_WINDOW:I = 0x10000000

.field protected static final HOT_EDGE_OF_SHOW_FLOAT_HANDLE:I = 0x28

.field protected static final LAND_LEFT_OFFSET_IN_DP:I = 0x28

.field protected static final NORMAL_ALPHA:F = 1.0f

.field protected static final RESIZE_HANDLE_HEIGHT_IN_DP:I = 0xfa

.field protected static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ColorZoomWindowManagerService"

.field protected static final TOP_LIMIT_EDGE_OF_MOVE_ZOOM_LANDSCAPE:I = 0x19

.field protected static final TOP_LIMIT_EDGE_OF_MOVE_ZOOM_PORTRAIT:I = 0x72

.field private static volatile sInstance:Lcom/android/server/wm/ColorZoomWindowManagerService;


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAppController:Lcom/android/server/wm/les;

.field private mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBoundsLandSpaceDefault:Landroid/graphics/Rect;

.field private mBoundsLandSpaceScale:Landroid/graphics/Rect;

.field private mBoundsLandSpaceScaleNavLeft:Landroid/graphics/Rect;

.field private mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

.field private mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

.field private mBoundsPortraitDefault:Landroid/graphics/Rect;

.field private mBoundsPortraitInputmethod:Landroid/graphics/Rect;

.field private mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

.field private mBoundsPortraitScale:Landroid/graphics/Rect;

.field private mChangedToMiniZoom:Z

.field private mColorZoomStarter:Lcom/android/server/wm/irq;

.field protected mCurrentInputMethodWindow:Lcom/android/server/wm/WindowState;

.field protected mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

.field private mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field private mDensity:F

.field private final mDisplayZoomModeUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mDistanceToBotttomEdgeScale:F

.field private mDistanceToSideEdgeScale:F

.field mEnterAlphaAnim:Landroid/animation/ValueAnimator;

.field private mEnterAlphaAnimCancel:Z

.field private mExpandAnimCancel:Z

.field mExpandScaleAnim:Landroid/animation/ValueAnimator;

.field private final mFullBtExpandScaleBasedOnZoomScale:F

.field private mFullBtRestoreAnimCancel:Z

.field mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

.field private final mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mInputMethodHeightDefault:I

.field protected mInputMethodVisibility:Z

.field private mInterstingStack:Lcom/android/server/wm/ActivityStack;

.field protected mLandLeftOffset:I

.field private mLandLeftOffsetLandscapeApp:I

.field protected mLandTopOffset:I

.field private mLandTopOffsetLandscapeApp:I

.field private mLandscapeDetectScale:F

.field private mLandscapeGestureHotZone:Landroid/graphics/Region;

.field protected mLastExitZoomMethod:I

.field protected mLastLongPressedRect:Landroid/graphics/Rect;

.field protected mLastZoomPkg:Ljava/lang/String;

.field protected mLockPkg:Ljava/lang/String;

.field private final mLockUid:Ljava/lang/Object;

.field protected mLockUserId:I

.field mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

.field private mMiniZoomService:Lcom/android/server/wm/veq;

.field private final mObserverLock:Ljava/lang/Object;

.field private mPendingTaskId:I

.field protected mPortLeftOffset:I

.field private mPortLeftOffsetLandscapeApp:I

.field protected mPortTopOffset:I

.field private mPortTopOffsetLandscapeApp:I

.field private mPortraiGestureHotZone:Landroid/graphics/Region;

.field private mPortraitDetectScale:F

.field private mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mResetZoom:Z

.field mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

.field private mRestoreAlphaAnimCancel:Z

.field private mRestoreAnimCancel:Z

.field mRestorePositionAnim:Landroid/animation/ValueAnimator;

.field mRestoreScaleAnim:Landroid/animation/ValueAnimator;

.field protected mRotation:I

.field private mScale:F

.field protected mScaleRect:Landroid/graphics/Rect;

.field protected mScaleRectCenter:Landroid/graphics/Point;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShrinkAnimCancel:Z

.field mShrinkScaleAnim:Landroid/animation/ValueAnimator;

.field protected mStackPositionerController:Lcom/android/server/wm/vju;

.field protected final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetAlpha:F

.field private mTmpCanceledAlpha:F

.field private mTmpCanceledMergedAlpha:F

.field private mTmpCanceledMergedRect:Landroid/graphics/Rect;

.field private mTmpCanceledMergedScale:F

.field private mTmpCanceledRect:Landroid/graphics/Rect;

.field private mTmpCanceledScale:F

.field private mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

.field private mTmpFullBtCanceledMergedScale:F

.field private mTmpFullBtCanceledRect:Landroid/graphics/Rect;

.field private mTmpFullBtCanceledScale:F

.field private mTmpFullZoomAnimRect:Landroid/graphics/Rect;

.field private mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private mTmpTaskId:I

.field private mWms:Lcom/android/server/wm/WindowManagerService;

.field private final mZoomAppObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/oplus/zoomwindow/IOplusZoomAppObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomStackLandscape:Z

.field private mZoomTransitType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomWindowManager$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTapExcludedWindows:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentInputMethodWindow:Lcom/android/server/wm/WindowState;

    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    invoke-direct {v1}, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInputMethodHeightDefault:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpPos:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUid:Ljava/lang/Object;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomAppObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mObserverLock:Ljava/lang/Object;

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDensity:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraitDetectScale:F

    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeDetectScale:F

    const v2, 0x3d89374c    # 0.067f

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToSideEdgeScale:F

    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToBotttomEdgeScale:F

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraiGestureHotZone:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeGestureHotZone:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitInputmethod:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScaleNavLeft:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpTaskId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mResetZoom:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtExpandScaleBasedOnZoomScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullZoomAnimRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTargetAlpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ColorZoomWindowManagerService;)Lcom/android/server/wm/veq;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandAnimCancel:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandAnimCancel:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledScale:F

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreAnimCancel:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreAnimCancel:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledAlpha:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledAlpha:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnimCancel:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnimCancel:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnimCancel:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnimCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mChangedToMiniZoom:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/wm/ColorZoomWindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomOnAnimUpdate(ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkAnimCancel:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkAnimCancel:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/ColorZoomWindowManagerService;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledScale:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ColorZoomWindowManagerService;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAnimCancel:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/wm/ColorZoomWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAnimCancel:Z

    return p1
.end method

.method private static addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-void
.end method

.method private synthetic bio(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    const-string v1, "ColorZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recentsAnimationFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomStackLocked(Lcom/android/server/wm/ActivityStack;)V

    const-string p2, "resetZoomFinished"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Lcom/android/server/wm/ActivityStack;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private calculateTmpBtZoomRectForAnimLocked(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateTmpBtZoomRectForAnimLocked zoomRectDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v2, "mini_zoom_button"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2}, Lcom/android/server/wm/veq;->bvj()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v2, v1

    add-int/2addr v3, v2

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, "ColorZoomWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateTmpBtZoomRectForAnimLocked mTmpMiniZoomAnimRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-string v0, "full_screen_button"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const-string p1, "ColorZoomWindowManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateTmpBtZoomRectForAnimLocked mTmpFullZoomAnimRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cancelRunningZoomAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    const-string v1, "ColorZoomWindowManagerService"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cancel mEnterAlphaAnim!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cancel mRestoreAlphaAnim!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic cno(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomStackLocked(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Lcom/android/server/wm/ActivityStack;Z)V

    iget v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const-string v2, "animationFinished"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    const-string p0, "ColorZoomWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished: exit zoom mode  curStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "onAnimationFinished ActivityRecord is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setDefaultScaleInfo(Lcom/android/server/wm/ActivityStack;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method private finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/server/wm/bio;

    invoke-direct {p0, p2}, Lcom/android/server/wm/bio;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getBubbleOrZoomStack()Lcom/android/server/wm/ActivityStack;
    .locals 6

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    if-nez v5, :cond_0

    const/16 v5, 0x64

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentZoomStackSideInfo()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentZoomStackSideInfo center:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displaycenter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorZoomWindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;
    .locals 2

    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->sInstance:Lcom/android/server/wm/ColorZoomWindowManagerService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/ColorZoomWindowManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/ColorZoomWindowManagerService;->sInstance:Lcom/android/server/wm/ColorZoomWindowManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;-><init>()V

    sput-object v1, Lcom/android/server/wm/ColorZoomWindowManagerService;->sInstance:Lcom/android/server/wm/ColorZoomWindowManagerService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->sInstance:Lcom/android/server/wm/ColorZoomWindowManagerService;

    return-object v0
.end method

.method private getPresentUIDs(Landroid/util/IntArray;Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/server/wm/ywr;->zta:Lcom/android/server/wm/ywr;

    const-class v0, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_0
    return-void
.end method

.method private getRootPackage(Lcom/android/server/wm/ActivityStack;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getTaskId(Lcom/android/server/wm/DisplayContent;II)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DisplayContent"

    const-string v2, "taskIdFromPoint skip method show"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    const/4 p0, -0x2

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x2

    const-string v7, "ColorZoomWindowManagerService"

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "found pip task ignore."

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getTaskIdByTaskStack(Lcom/android/server/wm/ActivityStack;II)I

    move-result v0

    if-lez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTaskId found target task = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getTaskIdByTaskStack(Lcom/android/server/wm/ActivityStack;II)I
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpTaskId:I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/dma;->zta:Lcom/android/server/wm/dma;

    const-class v1, Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, p0, v1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_0
    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpTaskId:I

    if-lez p0, :cond_1

    return p0

    :cond_1
    const/4 p0, -0x4

    return p0
.end method

.method private getVisibleZoomStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/wm/igw;->zta:Lcom/android/server/wm/igw;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private inZoomWindowMode(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private initScreen()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDensity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreen start: mScreenWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v2, v0

    const v3, 0x3fd55555

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInputMethodHeightDefault:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v2, v0

    const v4, 0x3f2ac083    # 0.667f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v6, v0

    mul-float/2addr v6, v3

    mul-float/2addr v6, v4

    float-to-int v4, v6

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortLeftOffset:I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v6, 0x13d

    invoke-static {v6, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortTopOffset:I

    iget-object v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortLeftOffset:I

    add-int/2addr v2, v8

    add-int/2addr v4, v6

    invoke-virtual {v7, v8, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v6, v4

    const v7, 0x3fb9999a    # 1.45f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v5, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v4, v2

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v2, v2

    mul-float/2addr v2, v7

    mul-float/2addr v2, v6

    float-to-int v2, v2

    const/16 v6, 0x28

    invoke-static {v6, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandLeftOffset:I

    iget v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandTopOffset:I

    iget-object v9, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    add-int/2addr v4, v7

    add-int v10, v2, v8

    invoke-virtual {v9, v7, v8, v4, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v8, v7

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v4, v5, v5, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v7, v4

    mul-float/2addr v7, v3

    const v8, 0x3f0e5604    # 0.556f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v4

    mul-float/2addr v9, v8

    float-to-int v9, v9

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortLeftOffsetLandscapeApp:I

    iget v10, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortTopOffsetLandscapeApp:I

    iget-object v11, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    add-int/2addr v7, v4

    add-int/2addr v9, v10

    invoke-virtual {v11, v4, v10, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v7, v4

    mul-float/2addr v7, v3

    mul-float/2addr v7, v8

    float-to-int v3, v7

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-static {v6, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandLeftOffsetLandscapeApp:I

    iget v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandTopOffsetLandscapeApp:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    add-int/2addr v3, v0

    add-int/2addr v4, v6

    invoke-virtual {v2, v0, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraitDetectScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v4, v4

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToSideEdgeScale:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-direct {v0, v5, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v4, v3

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToSideEdgeScale:F

    sub-float v7, v6, v7

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    int-to-float v8, v7

    iget v9, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraitDetectScale:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v2, v4, v8, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v8, v7

    iget v9, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToBotttomEdgeScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v8, v4, v8

    invoke-direct {v3, v5, v8, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v8, v7

    iget v9, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeDetectScale:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v7

    iget v10, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToSideEdgeScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v4, v5, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    iget v9, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v10, v9

    iget v11, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToSideEdgeScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int v10, v8, v10

    int-to-float v11, v9

    iget v12, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeDetectScale:F

    sub-float/2addr v6, v12

    mul-float/2addr v11, v6

    float-to-int v6, v11

    invoke-direct {v7, v10, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    int-to-float v9, v8

    iget v10, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDistanceToBotttomEdgeScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v9, v8, v9

    iget v10, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    invoke-direct {v6, v5, v9, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraiGestureHotZone:Landroid/graphics/Region;

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v0, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraiGestureHotZone:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraiGestureHotZone:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeGestureHotZone:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeGestureHotZone:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeGestureHotZone:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoundsPortraitScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBoundsLandSpaceDefault = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mBoundsLandSpaceScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBoundsLandscapeAppDefault = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBoundsPortraitLandscapeAppScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBoundsLandscapeLandscapeAppScale"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIgnoreInputShownForResult(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->tsu()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUnReusedActivityInZoomMode(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->ssp()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUnSupportZoomMode(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->cno()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomBtAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needRefreshZoomWithDisplayChanged(Lcom/android/server/wm/DisplayContent;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "ColorZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "DisplayContent is null"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "DisplayInfo is null"

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "DisplayMetrics is null"

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", density = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    if-ne v4, v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    if-ne v2, v1, :cond_3

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDensity:F

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private notifyControlViewVisible(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Z)V
    .locals 5

    if-nez p2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {v2, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifyControlViewVisible changed event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorZoomWindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private processTask(Lcom/android/server/wm/Task;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v1}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/veq;->oif(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpTaskId:I

    :cond_3
    return-void
.end method

.method private processTaskBounds(Lcom/android/server/wm/Task;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getTaskBound()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    :cond_0
    return-void
.end method

.method private removeZoomStackOnTopFlags()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    const-string v4, "ColorZoomWindowManagerService"

    const-string v5, "removeZoomStackOnTopFlags"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reparentForFinishedRecent(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", windowCrop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v6

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p2, v6, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v6, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v6, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x0

    invoke-virtual {p1, v6, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomCornerRadius()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->dipToPixelInZoom(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v6, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method private resetZoomStackLocked(Lcom/android/server/wm/ActivityStack;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackShadow(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackAlpha(Lcom/android/server/wm/ActivityStack;F)V

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/server/wm/ActivityStack;->mZoomLaunchFlags:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    :cond_2
    return-void
.end method

.method static synthetic rtg(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_1
    return-void
.end method

.method private setDefaultScaleInfo(Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultScaleInfo : mZoomStackLandscape = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const v0, 0x3f0e5604    # 0.556f

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition(I)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr p1, v0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p1

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    const p1, 0x3f2ac083    # 0.667f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private setLockState(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getRootPackage(Lcom/android/server/wm/ActivityStack;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockPkg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUserId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLockPkg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLockUserId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setScaleInfoWithoutUpdatePosition(Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScaleInfoWithoutUpdatePosition : mZoomStackLandscape = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const v1, 0x3f0e5604    # 0.556f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    :cond_0
    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 v1, 0x19

    invoke-static {v1, p1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, p1, :cond_4

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust mScaleRect in limit screen when setScaleInfoWithoutUpdatePosition(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition(I)I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p1

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p1, :cond_3

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_3
    const p1, 0x3f2ac083    # 0.667f

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private setZoomStackAlpha(Lcom/android/server/wm/ActivityStack;F)V
    .locals 3

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "Failed to setZoomStackAlpha, zoomStack is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Failed to updateZoomWithAnimLocked: SurfaceControl is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomStackAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic sis(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateStackSize(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "Failed to updateStackSize : zoomStackBound is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    return-void
.end method

.method private updateZoomOnAnimUpdate(ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .locals 6

    sub-float p7, p6, p7

    mul-float/2addr p7, p3

    sub-float v5, p6, p7

    iget p6, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p7

    const/4 v0, 0x2

    div-int/2addr p7, v0

    add-int/2addr p6, p7

    iget p7, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v0

    add-int/2addr p7, v1

    iget v1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v3, p6

    sub-int/2addr v1, p6

    int-to-float p6, v1

    mul-float/2addr p6, p3

    add-float/2addr v3, p6

    float-to-int p6, v3

    int-to-float v1, p7

    sub-int/2addr v2, p7

    int-to-float p7, v2

    mul-float/2addr p7, p3

    add-float/2addr v1, p7

    float-to-int p7, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float/2addr v2, p3

    float-to-int p3, v2

    div-int/lit8 p4, v1, 0x2

    sub-int/2addr p6, p4

    add-int/2addr v1, p6

    div-int/lit8 p4, p3, 0x2

    sub-int/2addr p7, p4

    add-int/2addr p3, p7

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p6, p7, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_3

    :cond_1
    iput v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    :goto_0
    iput v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledScale:F

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move v2, v5

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p3, p4, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private updateZoomUIDsOnDisplay(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUid:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getPresentUIDs(Landroid/util/IntArray;Lcom/android/server/wm/ActivityStack;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "ColorZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZoomUIDsOnDisplay: stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    const-string p2, "ColorZoomWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomUIDsOnDisplay: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic wtn()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->qeg()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic you(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V

    return-void
.end method

.method public static synthetic zta(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/Task;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->processTask(Lcom/android/server/wm/Task;II)V

    return-void
.end method


# virtual methods
.method public addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTapExcluedWindow win = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg;->you(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result p0

    return p0
.end method

.method public adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->inZoomWindowMode(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p3, Landroid/view/InputWindowHandle;->frameLeft:I

    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p2, p1, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    add-int/2addr p0, p2

    iput p0, p3, Landroid/view/InputWindowHandle;->frameLeft:I

    iget p0, p3, Landroid/view/InputWindowHandle;->frameTop:I

    iget p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    add-int/2addr p0, p1

    iput p0, p3, Landroid/view/InputWindowHandle;->frameTop:I

    iget p0, p3, Landroid/view/InputWindowHandle;->frameRight:I

    add-int/2addr p0, p2

    iput p0, p3, Landroid/view/InputWindowHandle;->frameRight:I

    iget p0, p3, Landroid/view/InputWindowHandle;->frameBottom:I

    add-int/2addr p0, p1

    iput p0, p3, Landroid/view/InputWindowHandle;->frameBottom:I

    iget p0, p3, Landroid/view/InputWindowHandle;->inputFeatures:I

    const/high16 p1, 0x10000000

    or-int/2addr p0, p1

    iput p0, p3, Landroid/view/InputWindowHandle;->inputFeatures:I

    :cond_0
    return-void
.end method

.method public adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustWindowCropForLeash start: appToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustWindowCropForLeash start: appToken.getStack() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustWindowCropForLeash stackBounds = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " enter = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  appTransition ="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result p2

    if-eq p2, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result p2

    const/16 v0, 0x65

    if-eq p2, v0, :cond_0

    const-string p2, "adjustWindowCropForLeash: setCornerRadius"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomCornerRadius()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->dipToPixelInZoom(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->inZoomWindowMode(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p2, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v1, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v4, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v0, v1, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cantReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->igw(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public checkInSideGestureHotZone(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInSideGestureHotZone rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPortraiGestureHotZone:Landroid/graphics/Region;

    :goto_0
    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLandscapeGestureHotZone:Landroid/graphics/Region;

    goto :goto_0
.end method

.method public checkLaunchingMiniZoomFromRecent(Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mLaunchingMiniZoomFromRecent:Z

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStack;->mLaunchingMiniZoomFromRecent:Z

    return v0

    :cond_0
    return p1
.end method

.method public clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " before child = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " flags = 0x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowState"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p2, p2, -0x21

    :cond_0
    return p2
.end method

.method public clearZoomWindow()V
    .locals 0

    return-void
.end method

.method public varargs debugLogUtil(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/ColorZoomWindowDebugUtil;->debugLogUtil(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected dipToPixelInZoom(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "dipToPixelInZoom failed : DisplayMetrics is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public displayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "DisplayContent is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/veq;->fto(Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    if-eq v1, v2, :cond_2

    const-string v1, "displayChanged: rotation has been changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPendingTaskId:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/qbh;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/qbh;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPendingTaskId:I

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->needRefreshZoomWithDisplayChanged(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->initScreen()V

    :cond_5
    return-void
.end method

.method protected fullZoomWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ColorZoomWindowManagerService"

    const-string v2, "cancel mExpandScaleAnim before full screen zoom"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "ColorZoomWindowManagerService"

    const-string v1, "Failed to fullZoomWindow: zoomStack is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const-string v2, "ColorZoomWindowManagerService"

    const-string v3, "fullZoomWindow start"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomStackLocked(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic gck()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->wtn()V

    return-void
.end method

.method public gestureSwipeFromBottom()V
    .locals 0

    return-void
.end method

.method public getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getDefaultZoomBounds()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v1, :cond_3

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLastControlViewAction()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    return p0

    :cond_0
    const-string p0, "ColorZoomWindowManagerService"

    const-string v0, "Invalid state: mCurrentZoomInfo is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected getMiniZoomStackBoundExpected(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2}, Lcom/android/server/wm/veq;->bvj()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2}, Lcom/android/server/wm/veq;->bvj()F

    move-result v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "getMiniZoomStackBoundExpected failed: DisplayMetrics is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v5

    const/16 v6, 0x28

    invoke-static {v6, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v7, 0x1

    if-eq p0, v7, :cond_2

    const/4 v7, 0x3

    if-ne p0, v7, :cond_3

    :cond_2
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    :cond_3
    iget p0, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v5

    sub-int v1, p0, v1

    add-int/2addr p1, v6

    invoke-virtual {v0, v1, v6, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getRealActivityPkgName(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p0, :cond_0

    const-string p0, "taskRecord is null"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_1

    const-string p0, "realActivity is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScaleBound(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v0}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->oif(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getScreenHeight()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    return p0
.end method

.method public getTaskBound()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v1, :cond_3

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getWindowState(Lcom/android/server/wm/ActivityStack;)I
    .locals 1

    const/4 p0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0
.end method

.method public getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;
    .locals 21

    move-object/from16 v6, p2

    move/from16 v7, p6

    const/16 v8, 0x67

    const/16 v9, 0x66

    const/16 v10, 0x65

    const/16 v11, 0x64

    if-eq v7, v11, :cond_1

    if-eq v7, v10, :cond_1

    if-eq v7, v9, :cond_1

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->loadZoomAnimation(IZLcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    :cond_2
    move-object v13, v0

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    if-eq v0, v11, :cond_3

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_3

    if-ne v7, v8, :cond_4

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    move/from16 v1, p4

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityRecord;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v3, Lcom/android/server/wm/vdw;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v17

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomCornerRadius()I

    move-result v4

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ColorZoomWindowManagerService;->dipToPixelInZoom(I)I

    move-result v4

    int-to-float v4, v4

    move-object v12, v3

    move-object/from16 v16, v0

    move/from16 v18, p4

    move/from16 v20, v4

    invoke-direct/range {v12 .. v20}, Lcom/android/server/wm/vdw;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIZF)V

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v2, v3, v0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    goto :goto_2

    :cond_4
    move-object/from16 v2, p1

    :goto_2
    return-object v2
.end method

.method public getZoomAppConfigList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg;->sis(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getZoomCornerRadius()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x19

    :goto_0
    return p0
.end method

.method public getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUid:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isZoomUidOnDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, v1, Landroid/view/DisplayInfo;->appHeight:I

    const/4 p0, 0x0

    iput p0, v1, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, v1, Landroid/view/DisplayInfo;->appHeight:I

    :goto_0
    const-string p0, "ColorZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoomModeDisplayInfo: old info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "   new info="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "   displayId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   callingUid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getZoomStackBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v0, :cond_4

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceDefault:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method protected getZoomStackScale(Lcom/android/server/wm/ActivityStack;)F
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v0, 0x1

    const v1, 0x3f0e5604    # 0.556f

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const p0, 0x3f2ac083    # 0.667f

    return p0

    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const p0, 0x3f19999a    # 0.6f

    return p0
.end method

.method protected getZoomStackScaleBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getZoomStackOrientation(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitLandscapeAppScale:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitScale:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeLandscapeAppScale:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandSpaceScale:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->kth()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object p0

    return-object p0
.end method

.method public getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget-object v0, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRotation:I

    iput v1, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    const-string v2, ""

    iput-object v2, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockPkg:Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUserId:I

    iput v3, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    iget v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    iput v3, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    iget-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInputMethodVisibility:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    const v3, 0x3f2ac083    # 0.667f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, "ColorZoomWindowManagerService"

    const-string v1, "the current keyboard is a floating keyboard and the floating window is not raised, so set to false to notify the app to prevent the two buttons from being hidden on the app side"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iput-boolean v2, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInputMethodVisibility:Z

    iput-boolean v1, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getBubbleOrZoomStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mZoomPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mZoomPkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastZoomPkg:Ljava/lang/String;

    :goto_1
    iput-object v3, v1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->inZoomWindowMode(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, v1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iget v3, v0, Lcom/android/server/wm/ActivityStack;->mZoomUserId:I

    iput v3, v1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iput-boolean v2, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    return-object p0
.end method

.method public getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x64

    const-string v4, "ColorZoomWindowManagerService"

    const/4 v5, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v3, :cond_0

    iget v3, v6, Lcom/android/server/wm/ActivityStack;->mZoomLaunchFlags:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const-string p0, "no opening anim for mini stack "

    :goto_1
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_3

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "no closing anim for mini stack "

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    if-ne p2, v5, :cond_4

    return p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mZoomTransitType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    iput v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    return p1
.end method

.method public handleSleepStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v0}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ColorZoomWindowManagerService"

    const-string v1, "handleSleepStack stopMiniZoomMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    :cond_0
    const-string v0, "sleepStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "ColorZoomWindowManagerService: handleTapOutsideTask"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->debugLogUtil(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p1}, Lcom/android/server/wm/veq;->ugm()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->removeZoomStackOnTopFlags()V

    :cond_0
    return-void
.end method

.method public hideZoomWindow(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/16 v6, 0xc

    if-ne v1, v6, :cond_1

    :try_start_3
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_1
    :try_start_5
    iput v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    const-string v8, "ColorZoomWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hideZoomWindow : mLastExitZoomMethod = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x65

    iput v8, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    const/4 v8, 0x7

    const/4 v9, 0x0

    if-ne v1, v8, :cond_3

    invoke-direct {v0, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setLockState(Lcom/android/server/wm/ActivityStack;)V

    iput-boolean v7, v5, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getCurrentZoomStackSideInfo()I

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x66

    iput v8, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getCurrentZoomStackSideInfo()I

    move-result v8

    if-ne v8, v7, :cond_4

    const/16 v8, 0x67

    iput v8, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    goto :goto_0

    :cond_3
    iput-boolean v9, v5, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    :cond_4
    :goto_0
    iput-boolean v9, v5, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackShadow(F)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->cancelRunningZoomAnim()V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v10

    sub-int/2addr v10, v7

    const/4 v12, 0x0

    :goto_1
    if-ltz v10, :cond_9

    invoke-virtual {v8, v10}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v14

    sub-int/2addr v14, v7

    :goto_2
    if-ltz v14, :cond_8

    invoke-virtual {v13, v14}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    if-ne v15, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v11

    if-eq v11, v7, :cond_7

    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_7
    move-object v12, v15

    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_9
    if-ne v1, v6, :cond_a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    :cond_a
    const-string v1, "ColorZoomWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hideZoomWindow nextStack: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " mZoomBubble: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->removeZoomStackOnTopFlags()V

    if-eqz v1, :cond_b

    const-string v5, "hideZoomWindow"

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    invoke-virtual {v8, v1, v7, v9, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    iget-object v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v9, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public synthetic igw(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->bio(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method protected inZoomWindowMode(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init ams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init atms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/wm/irq;

    invoke-direct {v0, p1}, Lcom/android/server/wm/irq;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mColorZoomStarter:Lcom/android/server/wm/irq;

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/veq;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/wm/veq;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    :cond_0
    return-void
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    const-string v0, "ColorZoomWindowManagerService"

    const-string v1, "init wms"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/wm/veq;

    invoke-direct {v2, v1, p1, p0}, Lcom/android/server/wm/veq;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->initScreen()V

    new-instance p1, Lcom/android/server/wm/vju;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/android/server/wm/vju;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init screen size : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p1, Lcom/android/server/wm/les;

    invoke-direct {p1, p0}, Lcom/android/server/wm/les;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAppController:Lcom/android/server/wm/les;

    :cond_2
    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->igw()V

    return-void
.end method

.method public isMiniStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->gwm(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/qeg;->wtn(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public isSupportZoomWindowMode()Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/qeg;->gck()Z

    move-result p0

    return p0
.end method

.method protected isZoomStackLandscape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    return p0
.end method

.method public isZoomUidOnDisplay(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mDisplayZoomModeUIDs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic kth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->cno(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public loadZoomAnimation(IZLcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    new-instance v5, Lcom/android/server/wm/ColorZoomWindowManagerService$vdb;

    invoke-direct {v5, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService$vdb;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    iget-object v6, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v7, v6, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v6, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-eqz v2, :cond_1

    const/16 v10, 0x64

    if-ne v1, v10, :cond_4

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    iget-object v15, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    iget-object v11, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v16, v1

    move/from16 v21, v15

    move/from16 v22, v11

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_1
    move v11, v15

    const/16 v10, 0x65

    if-ne v1, v10, :cond_2

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    iget-object v11, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    move-object v15, v1

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v14, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto :goto_3

    :cond_2
    const/16 v10, 0x66

    if-ne v1, v10, :cond_3

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateXAnimation;

    const/high16 v12, -0x3bcc0000    # -720.0f

    invoke-direct {v1, v13, v12}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v14, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_2
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_3
    const/16 v10, 0x67

    if-ne v1, v10, :cond_4

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateXAnimation;

    const/high16 v12, 0x44340000    # 720.0f

    invoke-direct {v1, v13, v12}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v14, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded zoom animation "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for appToken="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   appFrame="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   enter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorZoomWindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v8, v9, v7, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_5
    return-object v10
.end method

.method protected moveStackLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method protected notifyControlViewChange(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateControlViewAction(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "Failed to notifyControlViewChange"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    iget-object v1, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/veq;->oif(Landroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAppController:Lcom/android/server/wm/les;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomAppObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/les;->zta(Landroid/os/RemoteCallbackList;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    return-void
.end method

.method public notifyInputMethodChanged(Z)V
    .locals 6

    const-string v0, "ColorZoomWindowManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "notifyInputMethodChanged: "

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onInputMethodChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error notifyInputMethodChanged changed event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception notifyInputMethodChanged changed event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAppController:Lcom/android/server/wm/les;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomAppObservers:Landroid/os/RemoteCallbackList;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/les;->you(Landroid/os/RemoteCallbackList;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomUIDsOnDisplay(Lcom/android/server/wm/ActivityStack;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->clearZoomWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyZoomWindowDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/wm/ActivityStack;->mZoomPkg:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowDied(Ljava/lang/String;Lcom/android/server/wm/ActivityStack;)V

    :cond_1
    return-void
.end method

.method public notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStackVisibleChange showStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorZoomWindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyZoomWindowShow "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getRealActivityPkgName(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mZoomPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mZoomPkg:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastZoomPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastZoomPkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastZoomPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mZoomUserId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomUIDsOnDisplay(Lcom/android/server/wm/ActivityStack;Z)V

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyZoomActivityShown "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public notifyZoomWindowDied(Ljava/lang/String;Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->disableDebugLifeCycle()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomAppState()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyZoomWindowDied appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onZoomWindowDied(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifyZoomWindowDied changed event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentInputMethodWindow:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception notifyZoomWindowDied changed event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public notifyZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 4

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->disableDebugLifeCycle()V

    const/4 p3, 0x1

    const-string v0, "ColorZoomWindowManagerService"

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    if-ne v1, p3, :cond_0

    const-string v1, "Need delete control view when zoom window hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    iput v1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    const/16 v1, 0x64

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyZoomWindowHide stopMiniZoomMode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/veq;->ivd(Z)V

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomUIDsOnDisplay(Lcom/android/server/wm/ActivityStack;Z)V

    invoke-virtual {p2, p3, p3}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isUnReusedActivityInZoomMode(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyZoomWindowHide: finish top = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when going to sleep"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    :goto_1
    if-ge p3, p2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "notifyZoomWindowHide: "

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifyZoomWindowHide changed event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception notifyZoomWindowHide changed event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public notifyZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .locals 6

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->enableDebugLifeCycle()V

    const-string v0, "ColorZoomWindowManagerService"

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, "Need delete float handle when zoom window show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    iput v1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyZoomWindowShow size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v3, p1}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;->onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error notifyZoomWindowShow changed event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception notifyZoomWindowShow changed event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationFinished:  r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/wtn;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/wtn;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 5

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onControlViewChanged cvInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "onControlViewChanged failed : cvInfo is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateControlViewAction(I)V

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->calculateTmpBtZoomRectForAnimLocked(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vju;->kth(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->hmo(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockPkg:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLockUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_3

    :try_start_0
    iget v2, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vju;->bio(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "ColorZoomWindowManagerService"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    :try_start_1
    const-string v2, "FLAG_ON_LONG_PRESS event - need to show control view"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetTmpRectForZoomAnim()V

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/vju;->bio(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mStackPositionerController:Lcom/android/server/wm/vju;

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/vju;->sis(Landroid/os/IBinder;)V

    const-string p1, "FLAG_ON_UP event - need to delete control view"

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public onRemoveStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveStack : stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    :cond_0
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInterstingStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected target stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on top of DisplayArea"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInterstingStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V

    :cond_0
    return-void
.end method

.method public onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mZoomLaunchFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowsDrawn startMiniZoomMode stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomMode(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    const-string v0, "ColorZoomWindowManagerService"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSurfaceFromDim ignore not default display ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->initialized()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "prepareSurfaceFromDim ignore systemserver not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    if-eq v3, v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomCornerRadius()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->dipToPixelInZoom(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareZoomTransition: curStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   nextStack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 p3, 0x65

    invoke-virtual {p2, p3, v1, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    iput p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    :cond_0
    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_1
    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorZoomWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/zoomwindow/IOplusZoomWindowManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_zoom_window"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_a

    if-nez v7, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v6, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_0
    const/16 v12, 0x64

    if-ltz v10, :cond_4

    invoke-virtual {v6, v10}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v14

    sub-int/2addr v14, v11

    :goto_1
    if-ltz v14, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v12, :cond_2

    const-string v5, "ColorZoomWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeStack: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v5}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    :cond_1
    const-string v5, "recentsFinished"

    invoke-direct {v0, v15, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x2

    const/16 v12, 0x64

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v10, -0x1

    const/4 v5, 0x2

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackOrientation(Z)V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    const-string v4, "ColorZoomWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recentsAnimationFinished taskId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,rect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v11}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    if-ne v2, v11, :cond_6

    const v2, 0x3f2ac083    # 0.667f

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const v2, 0x3f0e5604    # 0.556f

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    iput v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPendingTaskId:I

    move-object v4, v2

    move v6, v11

    goto :goto_2

    :cond_5
    move-object v4, v2

    const/4 v6, 0x0

    :goto_2
    iget v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService;->reparentForFinishedRecent(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-boolean v11, v9, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-direct {v0, v9}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    goto/16 :goto_5

    :cond_6
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    if-eq v3, v11, :cond_8

    const/4 v2, 0x3

    if-ne v3, v2, :cond_7

    goto :goto_4

    :cond_7
    const v1, 0x3e872b02    # 0.264f

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsPortraitDefault:Landroid/graphics/Rect;

    const-string v1, "ColorZoomWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_RECENTS_FINISHED_MINI_ZOOM portrait screen: rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mZoomStackLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService;->reparentForFinishedRecent(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-direct {v0, v9}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    :goto_3
    invoke-virtual {v0, v2, v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomMode(ILandroid/graphics/Rect;)V

    goto :goto_5

    :cond_8
    :goto_4
    const/16 v2, 0x2ad

    const/16 v3, 0xa0

    const/16 v4, 0x560

    const/16 v5, 0x23e

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const v2, 0x3e9374bc    # 0.288f

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    const/4 v6, 0x1

    iget-object v4, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mBoundsLandscapeAppDefault:Landroid/graphics/Rect;

    const-string v2, "ColorZoomWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_RECENTS_FINISHED_MINI_ZOOM landscape screen: rect = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mZoomStackLandscape = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mPendingTaskId:I

    iget v3, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService;->reparentForFinishedRecent(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-direct {v0, v9}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_3

    :cond_9
    :goto_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mResetZoom:Z

    invoke-interface/range {p6 .. p8}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return v11

    :cond_a
    :goto_7
    :try_start_2
    monitor-exit v8

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->initialized()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerZoomAppObserver: observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomAppObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->initialized()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInterstingStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V

    return-void
.end method

.method public removeIfPossible(Lcom/android/server/wm/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeIfPossible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetZoomStackLocked(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    return-void
.end method

.method public removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ColorZoomWindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTapExcluedWindow win = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg;->dma(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result p0

    return p0
.end method

.method protected resetStackSize(Lcom/android/server/wm/ActivityStack;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "ColorZoomWindowManagerService"

    const-string v0, "resetStackSize start"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_0
    return-void
.end method

.method protected resetTmpRectForZoomAnim()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const-string v0, "ColorZoomWindowManagerService"

    const-string v1, "resetTmpRectForAnim"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledScale:F

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mChangedToMiniZoom:Z

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledScale:F

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullZoomAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledAlpha:F

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    iput-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnimCancel:Z

    iput-boolean v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnimCancel:Z

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    return-void
.end method

.method public resetZoomAnimationFinished(Z)V
    .locals 8

    iget-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mResetZoom:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mResetZoom:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v7, Lcom/android/server/wm/kth;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/wm/kth;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected resetZoomAppState()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyControlViewChange(I)V

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    return-void
.end method

.method protected restorePositionFromMiniZoom(Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScale(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restorePositionFromMiniZoom : targetRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mScale = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorZoomWindowManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomStackBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    return-void
.end method

.method protected setScaleRect(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setZoomStackOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomStackLandscape:Z

    return-void
.end method

.method protected setZoomStackShadow(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p0, :cond_0

    const-string p0, "Failed to startMiniZoomMode: zoomStack is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomStackShadow radius = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg;->ywr(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    return-void
.end method

.method public shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p4, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isUnReusedActivityInZoomMode(Landroid/content/ComponentName;)Z

    move-result p0

    invoke-virtual {p4}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget-object p4, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p4

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-ne p4, v1, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    const/4 v3, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    :cond_1
    if-ne v3, v1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iget v1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v3, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-nez v1, :cond_6

    if-eqz p0, :cond_6

    if-eqz p4, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    if-nez p4, :cond_6

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldClearReusedActivity: not reused reusedActivity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  when launch startActivity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  reusedIsZoom="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "  shouldLaunchInZoom="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ColorZoomWindowManagerService"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    return v2

    :cond_6
    return v0
.end method

.method public shouldIgnoreInputShownForResult(II)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isZoomUidOnDisplay(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isIgnoreInputShownForResult(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignoreInputShownForResult: curTop="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorZoomWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldIgnoreStartZoomWindowFromRecent(Lcom/android/server/wm/Task;I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ColorZoomWindowManagerService"

    if-nez p1, :cond_0

    const-string p0, "IgnoreStartZoomWindowFromRecent: task is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", zoomLaunchFlags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/gck;

    invoke-direct {p2, p0}, Lcom/android/server/wm/gck;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return v1

    :cond_2
    return v0
.end method

.method public startMiniZoomMode(ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setZoomStackShadow(F)V

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/veq;->irq(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected startMiniZoomOnSelectedButtonWithAnim()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mChangedToMiniZoom:Z

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getMiniZoomStackBoundExpected(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledScale:F

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v1}, Lcom/android/server/wm/veq;->bvj()F

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMiniZoomOnSelectedButtonWithAnim = startRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorZoomWindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/16 v6, 0x64

    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "startMiniZoomOnSelectedButtonWithAnim failed zoom stack is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_1

    const-string p0, "startMiniZoomOnSelectedButtonWithAnim failed surface is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;

    move-object v1, v9

    move-object v2, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService$ywr;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;

    invoke-direct {v1, p0, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$qbh;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniBtSelectedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mColorZoomStarter:Lcom/android/server/wm/irq;

    if-eqz v0, :cond_1

    const-string v0, "extra_window_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mColorZoomStarter:Lcom/android/server/wm/irq;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/irq;->zta(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public stopMiniZoomMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->ivd(Z)V

    return-void
.end method

.method protected stopMiniZoomWithAnim(Lcom/android/server/wm/ActivityStack;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v0}, Lcom/android/server/wm/veq;->bvj()F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackScale(Lcom/android/server/wm/ActivityStack;)F

    move-result v7

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/veq;->oif(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const-string v1, "ColorZoomWindowManagerService"

    if-eqz v0, :cond_0

    const-string p0, "Failed to stopMiniZoomWithAnim mini zoom rect is empty"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "restore to last long press zoom window rect"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "restore to default scale zoom window rect"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackScaleBound(Lcom/android/server/wm/ActivityStack;)Landroid/graphics/Rect;

    move-result-object p2

    :goto_1
    invoke-virtual {v8, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopMiniZoomWithAnim: startRect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", targetRect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v9, Lcom/android/server/wm/ColorZoomWindowManagerService$wtn;

    move-object v0, v9

    move-object v1, p0

    move v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService$wtn;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x14a

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;

    invoke-direct {v0, p0, p1, v7, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$dma;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityStack;FLandroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Lcom/android/server/wm/r;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/r;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V

    return-void
.end method

.method public topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleInfoWithoutUpdatePosition(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public synthetic tsu(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->sis(I)V

    return-void
.end method

.method public unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomAppObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mIOplusZoomWindowObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public updateControlViewAction(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mCurrentZoomInfo:Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    return-void
.end method

.method public updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpPos:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpPos:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/android/server/wm/Task;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isZoomBtAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "already changing SurfacePosition with anim running"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/server/wm/WindowContainer;->mZoomLaunchFlags:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/veq;->ugm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, v0, Lcom/android/server/wm/Task;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpPos:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    iget v8, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScale:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpPos:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method protected updateZoomOnSelectedButton(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v0, p1, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRecentsTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "updateZoomOnSelectedButton failed var is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V
    .locals 8

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-nez p5, :cond_10

    const/4 p5, 0x0

    const-string v2, "ColorZoomWindowManagerService"

    const/4 v3, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,stack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    if-ne p6, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p4

    if-ne p4, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p6

    if-eqz p6, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p6

    if-eqz p6, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p6

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne p6, v4, :cond_0

    iget-object p6, p4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p6}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isUnSupportZoomMode(Landroid/content/ComponentName;)Z

    move-result p6

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateZoomStack: if the un Support ZoomMode top="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  and startActivity ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  is same task, not start in zoom"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result p4

    sub-int/2addr p4, v1

    :goto_0
    if-ltz p4, :cond_4

    invoke-virtual {p3, p4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p6, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-ne v6, v0, :cond_2

    if-eq p1, v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeStack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/veq;->ugm()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->stopMiniZoomMode(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    iget-object p4, p3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_5

    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p4, :cond_5

    invoke-virtual {p4, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    iput-boolean v3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mInputMethodVisibility:Z

    const-string p4, "updateZoomStack: hide inputMethod Window when start in zoom mode"

    invoke-static {v2, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p3, v0, v1, v3, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    iput v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mZoomTransitType:I

    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->computeLaunchParams(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getZoomLaunchFlags()I

    move-result p2

    iput p2, p1, Lcom/android/server/wm/ActivityStack;->mZoomLaunchFlags:I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_11

    invoke-virtual {p0, v3, p5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->startMiniZoomMode(ILandroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_6
    if-ne p6, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_9

    iput-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mZoomBubble:Z

    iput-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mStackShown:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mStackShown false: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object p3

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Lcom/android/server/wm/ActivityStack;Z)V

    iget-object p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    invoke-virtual {p3, v1, v1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "updateZoomStack: topFullStack="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_7

    iget-object p4, p3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p4, :cond_7

    const-string p5, "makeInvisible"

    invoke-virtual {p4, p5, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_7

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "updateZoomStack: topFullStack.mResumedActivity="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :cond_7
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p2

    if-ne p2, v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    :cond_8
    if-eqz v3, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    goto/16 :goto_4

    :cond_9
    if-eqz p4, :cond_11

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    if-eq p2, p1, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p1

    if-eqz p1, :cond_11

    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/veq;->ivd(Z)V

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->dma()V

    goto/16 :goto_4

    :cond_a
    if-eqz p3, :cond_11

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p5

    :cond_b
    invoke-static {}, Lcom/android/server/wm/qeg;->rtg()Lcom/android/server/wm/qeg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/qeg;->cno()Ljava/util/List;

    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isUnSupportZoomMode(Landroid/content/ComponentName;)Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unSupportZoom: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,callingPid: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,sourceStack: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_c

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_c

    if-eq p5, p1, :cond_c

    if-nez p2, :cond_c

    const-string p2, "updateSourceStack"

    invoke-direct {p0, p5, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->computeLaunchParams(Lcom/android/server/wm/ActivityStack;)V

    goto/16 :goto_4

    :cond_c
    if-eqz p2, :cond_e

    const/4 p2, 0x4

    iput p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastExitZoomMethod:I

    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    if-eqz p5, :cond_d

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p2

    if-ne p2, v0, :cond_d

    if-eq p5, p1, :cond_d

    invoke-virtual {p5, v1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    invoke-virtual {p0, p5}, Lcom/android/server/wm/ColorZoomWindowManagerService;->resetStackSize(Lcom/android/server/wm/ActivityStack;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomWindowInfo()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p5, v1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;Lcom/android/server/wm/ActivityStack;Z)V

    goto/16 :goto_4

    :cond_e
    if-eqz p4, :cond_f

    if-eq p5, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto/16 :goto_2

    :cond_f
    if-lez p6, :cond_11

    if-eq p5, p1, :cond_11

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_11

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "=callingPid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_11

    iget-object p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p3

    if-ne p3, p6, :cond_11

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sourceStack start stack with callingPid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "updateZoomStack()"

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->finishZoomStack(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    if-ne p5, v1, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p2

    if-ne p2, v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleInfoWithoutUpdatePosition(Lcom/android/server/wm/ActivityStack;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->updateStackSize(Lcom/android/server/wm/ActivityStack;)V

    :cond_11
    :goto_4
    return-void
.end method

.method protected updateZoomStackBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->setScaleRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRectCenter:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->computeLaunchParams(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->isMiniStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/veq;->c(Lcom/android/server/wm/ActivityStack;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move/from16 v3, p3

    const-string v1, "ColorZoomWindowManagerService"

    if-eqz p1, :cond_15

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Failed to updateZoomWithAnimLocked: SurfaceControl is null"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mMiniZoomService:Lcom/android/server/wm/veq;

    invoke-virtual {v2}, Lcom/android/server/wm/veq;->bvj()F

    move-result v6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackScale(Lcom/android/server/wm/ActivityStack;)F

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentRect = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", buttonSelectedState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x12c

    const-string v2, ", mTmpCanceledMergedRect = "

    const/4 v5, 0x1

    const/4 v12, 0x0

    const v13, 0x3e99999a    # 0.3f

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_4

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "cancel last running mRestoreScaleAnim before start next mShrinkScaleAnim"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iput v7, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init mTmpCanceledMergedScale = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start shrink anim scale mTmpCanceledMergedScale = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpMiniZoomAnimRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v0, v14, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    iput-object v14, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v11, v2

    move/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-virtual {v14, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$bvj;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$bvj;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v13, v12, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_4
    const-wide/16 v9, 0x14a

    if-ne v3, v14, :cond_6

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cancel last running mShrinkScaleAnim before start next mRestoreScaleAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter restore anim mTmpCanceledMergedScale = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v0, v14, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/server/wm/ColorZoomWindowManagerService$ibl;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerService$ibl;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;F)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$gwm;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$gwm;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v13, v12, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x3

    const-string v6, ", mTmpFullBtCanceledMergedRect = "

    if-ne v3, v2, :cond_9

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "cancel last running mFullBtRestoreScaleAnim before start next mExpandScaleAnim"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iput v7, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mTmpFullBtCanceledMergedScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start expand anim scale mTmpFullBtCanceledMergedScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullZoomAnimRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v0, v14, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v7

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerService$ugm;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;FILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$zta;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v13, v12, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x4

    if-ne v3, v2, :cond_b

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "cancel last running mExpandScaleAnim before start next mFullBtRestoreScaleAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mExpandScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter full restore anim mTmpFullBtCanceledMergedScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v0, v14, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/server/wm/ColorZoomWindowManagerService$you;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerService$you;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;F)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$sis;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$sis;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v13, v12, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x5

    const-wide/16 v9, 0xfa

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    if-ne v3, v2, :cond_e

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "cancel last running mRestoreAlphaAnim before start next mEnterAlphaAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    iget-boolean v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnimCancel:Z

    if-nez v0, :cond_d

    iput v15, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mEnterAlphaAnim mTmpCanceledMergedAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnterAlphaAnim mTmpCanceledMergedAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v14, [F

    iget v1, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    aput v1, v0, v11

    aput v6, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$tsu;

    invoke-direct {v1, v8, v4}, Lcom/android/server/wm/ColorZoomWindowManagerService$tsu;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$rtg;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$rtg;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v13, v12, v15, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x6

    if-ne v3, v2, :cond_11

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "cancel last running mEnterAlphaAnim before start next mRestoreAlphaAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget-boolean v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mEnterAlphaAnimCancel:Z

    if-nez v0, :cond_10

    iput v6, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mRestoreAlphaAnim mTmpCanceledMergedAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoreAlphaAnim mTmpCanceledMergedAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v14, [F

    iget v1, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedAlpha:F

    aput v1, v0, v11

    aput v15, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;

    invoke-direct {v1, v8, v4}, Lcom/android/server/wm/ColorZoomWindowManagerService$ssp;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;

    invoke-direct {v1, v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$cno;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v13, v12, v15, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreAlphaAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x7

    if-ne v3, v2, :cond_14

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v0, "Need cancel the running mFullBtRestoreScaleAnim before start mRestorePositionAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mFullBtRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledScale:F

    iput v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedScale:F

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledMergedRect:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledScale:F

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpFullBtCanceledRect:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v6, v0

    goto :goto_3

    :cond_12
    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v0, "Need cancel the running mRestoreScaleAnim before start mRestorePositionAnim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestoreScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledScale:F

    iput v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedRect:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledMergedScale:F

    iget-object v5, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mTmpCanceledRect:Landroid/graphics/Rect;

    goto :goto_2

    :cond_13
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v6, v7

    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mLastLongPressedRect:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestorePositionAnim startRect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", finishScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v14, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/server/wm/ColorZoomWindowManagerService$kth;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService$kth;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;

    invoke-direct {v1, v8, v9}, Lcom/android/server/wm/ColorZoomWindowManagerService$bio;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v13, v12, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/server/wm/ColorZoomWindowManagerService;->mRestorePositionAnim:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_14
    :goto_4
    return-void

    :cond_15
    :goto_5
    const-string v0, "Failed to updateZoomWithAnimLocked: var is null"

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateZoomWithPanAnimLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityStack;I)V
    .locals 9

    const-string v0, "ColorZoomWindowManagerService"

    if-nez p3, :cond_0

    const-string p0, "Failed to updateZoomWithAnimLocked: zoomStack is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomWithPanAnimLocked startRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_1

    const-string p0, "Failed to updateZoomWithPanAnimLocked: SurfaceControl is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getZoomStackScale(Lcom/android/server/wm/ActivityStack;)F

    move-result v8

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;

    move-object v2, v0

    move-object v3, p0

    move v4, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/server/wm/ColorZoomWindowManagerService$gck;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService$gck;-><init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x14a

    invoke-virtual {p3, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p1, 0x3e99999a    # 0.3f

    const/4 p2, 0x0

    const p4, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 0

    const/16 p0, 0x64

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
