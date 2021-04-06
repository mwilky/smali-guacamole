.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa


# instance fields
.field private mAmbientBrightnessThresholds:[I

.field private mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mAmbientLux:F

.field private final mContext:Landroid/content/Context;

.field private final mDisplayBrightnessSetting:Landroid/net/Uri;

.field private mDisplayBrightnessThresholds:[I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLowPowerModeEnabled:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInZone:I

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldObserveAmbientChange:Z

.field private mShouldObserveDisplayChange:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    nop

    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "display brightness threshold array and ambient brightness threshold array have different length"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method private checkShouldObserve([I)Z
    .locals 4

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isDefaultDisplayOn()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private isInsideZone(IF)Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gt p1, v1, :cond_2

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    return v3

    :cond_0
    if-ltz v1, :cond_1

    if-gt p1, v1, :cond_2

    return v3

    :cond_1
    if-ltz v2, :cond_2

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private onBrightnessChangedLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideZone(IF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ambient lux "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Vote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method private onScreenOn(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_0
    return-void
.end method

.method private restartObserver()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "DisplayModeDirector"

    invoke-static {v5, v4}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    :cond_4
    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    :goto_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :goto_4
    return-void
.end method

.method private updateSensorStatus()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientBrightnessThreshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceConfigRefreshRateInZoneChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_0
    return-void
.end method

.method public onDeviceConfigThresholdsChanged([I[I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_0
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .locals 4

    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    :cond_1
    return-void
.end method
