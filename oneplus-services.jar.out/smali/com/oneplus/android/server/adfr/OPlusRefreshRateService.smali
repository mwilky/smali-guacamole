.class public Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;
.super Lcom/oneplus/adfr/IOPlusRefreshRate$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOW_BRIGHTNESS_THRESHOLD:F = 100.0f

.field private static final OPLUS_DC_DIMMING:Ljava/lang/String; = "oneplus_dc_dimming_value"

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/adfr/IOPlusRefreshRate;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OPlusRefreshRateService"


# instance fields
.field private mContentType:Landroid/hardware/display/DisplayManagerInternal$ContentType;

.field private mContext:Landroid/content/Context;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mHasFlickerRisk:Z

.field private mNits:F

.field private final mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

.field private final mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

.field private final mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

.field private mSettingsObserver:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->DEBUG:Z

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/adfr/IOPlusRefreshRate$Stub;-><init>()V

    sget-object v0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->NONE:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContentType:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/adfr/tsu;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/adfr/tsu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    new-instance p1, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-direct {p1}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    new-instance v0, Lcom/oneplus/android/server/adfr/rtg;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/adfr/rtg;-><init>(Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;)V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    iget-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/adfr/tsu;->vdb(Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;)V

    new-instance p1, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;-><init>(Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mSettingsObserver:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->updateDCModeSettingLocked()V

    return-void
.end method

.method public static getDefault()Lcom/oneplus/adfr/IOPlusRefreshRate;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/adfr/IOPlusRefreshRate;

    return-object v0
.end method

.method private updateDCModeSettingLocked()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_dc_dimming_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/adfr/rtg;->rtg(Z)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->notifyRefreshRatePolicyChange()V

    return-void
.end method

.method private updateUIFlicker()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContentType:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    sget-object v1, Landroid/hardware/display/DisplayManagerInternal$ContentType;->GRAPHICS:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mNits:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mHasFlickerRisk:Z

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/adfr/rtg;->cno(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mHasFlickerRisk:Z

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->notifyRefreshRatePolicyChange()V

    :cond_1
    return-void
.end method


# virtual methods
.method public Int2ContentType(I)Landroid/hardware/display/DisplayManagerInternal$ContentType;
    .locals 0

    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->GRAPHICS:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$ContentType;->value()I

    move-result p0

    if-ne p1, p0, :cond_0

    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->GRAPHICS:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->PHOTO:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$ContentType;->value()I

    move-result p0

    if-ne p1, p0, :cond_1

    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->PHOTO:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->CINEMA:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$ContentType;->value()I

    move-result p0

    if-ne p1, p0, :cond_2

    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->CINEMA:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->GAME:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$ContentType;->value()I

    move-result p0

    if-ne p1, p0, :cond_3

    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->GAME:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    goto :goto_0

    :cond_3
    sget-object p0, Landroid/hardware/display/DisplayManagerInternal$ContentType;->NONE:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    :goto_0
    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContext:Landroid/content/Context;

    const-string v0, "OPlusRefreshRateService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/android/server/adfr/tsu;->bio(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p2, p1}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->sis(Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/adfr/rtg;->zta(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public filterModes(II[I)[I
    .locals 2

    const-string v0, "OPlusRefreshRateService"

    const-string v1, " filterModes"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/adfr/rtg;->you(II[I)[I

    move-result-object p0

    return-object p0
.end method

.method public isOAMode()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/rtg;->sis()Z

    move-result p0

    return p0
.end method

.method public isSupportADFR()Z
    .locals 2

    const-string v0, "OPlusRefreshRateService"

    const-string v1, " isSupportADFR"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp()Z

    move-result p0

    return p0
.end method

.method public notifyNitsChange(F)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " notifyNitsChange nits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusRefreshRateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mNits:F

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/adfr/tsu;->bvj(F)V

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->updateUIFlicker()V

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPlusRefreshRateService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/adfr/IOPlusRefreshRate$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oplus_vrr_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " screenStateChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusRefreshRateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->gwm(I)V

    return-void
.end method

.method public setBaseModeId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setBaseModeId modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusRefreshRateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/adfr/rtg;->tsu(I)V

    return-void
.end method

.method public setContentType(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setContentType displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPlusRefreshRateService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->Int2ContentType(I)Landroid/hardware/display/DisplayManagerInternal$ContentType;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContentType:Landroid/hardware/display/DisplayManagerInternal$ContentType;

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->updateUIFlicker()V

    return-void
.end method

.method public setOAStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setOAStatus enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusRefreshRateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRatePolicy:Lcom/oneplus/android/server/adfr/rtg;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/adfr/rtg;->ssp(Z)V

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OPlusRefreshRateService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mQSyncController:Lcom/oneplus/android/server/adfr/tsu;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/adfr/tsu;->zgw(Landroid/content/Context;)V

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_dc_dimming_value"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mSettingsObserver:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->updateDCModeSettingLocked()V

    return-void
.end method

.method public updateDisplayModes(I[Landroid/view/Display$Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->mRefreshRateConfigs:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->bio(I[Landroid/view/Display$Mode;)V

    return-void
.end method
