.class public Lcom/oneplus/anim/OpGraphLight;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;,
        Lcom/oneplus/anim/OpGraphLight$AnimateImageView;,
        Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;
    }
.end annotation


# static fields
.field private static ALPHA_MODE_HIGH:I

.field private static ALPHA_MODE_LOW:I

.field private static final CIRCLE_FRONT_CAMERA_ANIM:Z

.field private static LUX_THRESHOLD_HIGH:F

.field private static LUX_THRESHOLD_MIDDLE:F


# instance fields
.field private m2kOr1080p:I

.field private mAlphaMode:I

.field private mAnimateImageHeight:I

.field private mAnimateImageView:Landroid/widget/ImageView;

.field private mAnimateImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDarkMode:Z

.field private mFrontCameraPosistion:I

.field private mFrontCameraPosistionY:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLightSensorRegistered:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSupportDarkMode:Z

.field private mViewAdded:Z

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_HIGH:F

    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_MIDDLE:F

    const/16 v0, 0xff

    sput v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_HIGH:I

    const/16 v0, 0x64

    sput v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_LOW:I

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fb

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mLightSensorRegistered:Z

    sget v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_HIGH:I

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAlphaMode:I

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$2;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$2;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$3;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$3;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$4;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$4;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    if-eqz p2, :cond_0

    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_front_camera_animation_support_dark_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight;->mSupportDarkMode:Z

    :cond_0
    new-instance p1, Lcom/oneplus/anim/OpGraphLight$1;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p2, p3}, Lcom/oneplus/anim/OpGraphLight$1;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/anim/OpGraphLight;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAlphaMode:I

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/anim/OpGraphLight;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/anim/OpGraphLight;->mAlphaMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/anim/OpGraphLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/anim/OpGraphLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight;->mSupportDarkMode:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/anim/OpGraphLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    return p0
.end method

.method static synthetic access$1800()F
    .locals 1

    sget v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_MIDDLE:F

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    sget v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_LOW:I

    return v0
.end method

.method static synthetic access$2000()F
    .locals 1

    sget v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_HIGH:F

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    sget v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_HIGH:I

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpGraphLight;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpGraphLight;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpGraphLight;->show(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/anim/OpGraphLight;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    return p0
.end method

.method private disableLightSensor()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mLightSensorRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mLightSensorRegistered:Z

    :cond_1
    return-void
.end method

.method private enableLightSensor()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    const-string v0, "debug.frontcamera.lightsensor.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    const-string v2, "debug.frontcamera.lux.threshold.middle"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_MIDDLE:F

    const-string v0, "debug.frontcamera.lux.threshold.high"

    const/16 v2, 0x64

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/oneplus/anim/OpGraphLight;->LUX_THRESHOLD_HIGH:F

    const/16 v0, 0xff

    const-string v3, "debug.frontcamera.alpha.mode.high"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_HIGH:I

    const/16 v0, 0x96

    const-string v3, "debug.frontcamera.alpha.mode.middle"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const-string v0, "debug.frontcamera.alpha.low"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/anim/OpGraphLight;->ALPHA_MODE_LOW:I

    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mLightSensorRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mSensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v1, p0, Lcom/oneplus/anim/OpGraphLight;->mLightSensorRegistered:Z

    :cond_1
    return-void
.end method

.method private hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    const-string v1, "OpGraphLight"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "hide, mViewContainer.remove view"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v2, v0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->destroyLottieDrawable()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "hide, mWm.remove container view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_2
    return-void
.end method

.method private show(Z)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/anim/OpGraphLight;->enableLightSensor()V

    iget-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isStatusBarIconsDark()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->OpGraphLightTheme:I

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / screenWidth:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpGraphLight"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v6, 0x438

    const/4 v7, 0x1

    if-ne v4, v6, :cond_3

    iput v7, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    goto :goto_1

    :cond_3
    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    :goto_1
    sget v4, Lcom/android/systemui/R$dimen;->op_front_camera_animation_height:I

    invoke-static {v1, v4, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    sget v8, Lcom/android/systemui/R$dimen;->op_front_camera_animation_width:I

    invoke-static {v1, v8, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v8

    sget-boolean v9, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-eqz v9, :cond_4

    const-string v9, "debug.frontcameraposistion.size.rate"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "after debug modify, height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", width:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", rate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v8, :cond_5

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iput v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    goto :goto_3

    :cond_5
    sget-boolean v4, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v4, :cond_6

    sget v4, Lcom/android/systemui/R$drawable;->op_front_camera_animation_graph:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    :cond_6
    sget v4, Lcom/android/systemui/R$drawable;->op_front_camera_animation_circle_000:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz v4, :cond_8

    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    sget-boolean v4, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v4, :cond_9

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    if-ne v4, v7, :cond_9

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    int-to-double v8, v4

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v4, v8

    iput v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    int-to-double v8, v4

    const-wide v10, 0x3fe7f559b3d07c85L    # 0.7487

    mul-double/2addr v8, v10

    double-to-int v4, v8

    iput v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    :cond_9
    :goto_3
    sget v4, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion:I

    invoke-static {v1, v4, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    iput v4, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    sget v4, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion_y:I

    invoke-static {v1, v4, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnimateImageWidth:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / mAnimateImageHeight:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFrontCameraPosistion:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mFrontCameraPosistionY:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    const-string v4, "debug.frontcameraposistion.offset.x"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    const-string v4, "debug.frontcameraposistion.offset.y"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after debug modify, mFrontCameraPosition:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mFrontCameraPositionY:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    if-nez v4, :cond_c

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    :cond_c
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in first show() / rotation:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    iget v9, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_f

    const/4 v12, 0x2

    if-eq v1, v12, :cond_e

    if-eq v1, v10, :cond_d

    goto/16 :goto_5

    :cond_d
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v4

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_4

    :cond_e
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v12, v8

    sub-int v8, v12, v4

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v6

    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v4

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v6

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    move v15, v8

    move v8, v2

    goto :goto_6

    :cond_f
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v8

    sub-int v8, v2, v6

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v6

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_4
    move v15, v9

    goto :goto_6

    :cond_10
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_5
    move v15, v8

    move v8, v9

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wmXpos:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / wmYpos:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mViewAdded:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-nez v2, :cond_13

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v17, 0x7e8

    const v18, 0x20800138

    const/16 v19, -0x3

    move-object v12, v2

    move/from16 v16, v8

    invoke-direct/range {v12 .. v19}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x50

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v4, "GraphLight"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v1, v10, :cond_11

    const/16 v1, 0x35

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_7

    :cond_11
    const/16 v1, 0x33

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_7
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v7, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v2, v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$200(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_12
    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    :cond_1
    return-void
.end method

.method public isFrontCameraAnimOn()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->isFrontCameraAnimOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->checkOrientationType()Z

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->getDockedLight()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/oneplus/anim/OpGraphLight;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->getHasDockedStack()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    instance-of v5, v5, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDarkChanged, area:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", darkIntensity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", tint:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isDark:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isInArea:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpGraphLight"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    if-eqz v4, :cond_8

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    :cond_7
    :goto_3
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->notifyStatusBarIconsDark(Z)V

    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    if-eq p1, v1, :cond_8

    iput-boolean v1, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->isFrontCameraAnimOn()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight;->mSupportDarkMode:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    check-cast p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    invoke-direct {p0, v2}, Lcom/oneplus/anim/OpGraphLight;->show(Z)V

    :cond_8
    return-void
.end method

.method public postShow()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->disableLightSensor()V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateViews(F)V
    .registers 6
    .param p1, "f"    # F

    .line 161
    return-void
.end method
