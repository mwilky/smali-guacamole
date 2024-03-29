.class Lcom/android/server/wm/ForceRefreshRatePackageList;
.super Ljava/lang/Object;
.source "ForceRefreshRatePackagelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_FORCE_REFRESH_RATE_LIST:Ljava/lang/String; = "ext_force_refresh_rate_list"

.field private static final REFRESH_RATE_EPSILON:F = 0.01f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mForcedPackageList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ForceRefreshRatePackageList;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mForcedPackageList:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;-><init>(Lcom/android/server/wm/ForceRefreshRatePackageList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mSettingsObserver:Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$MG73m0RtTJmDIfa6VdzyGV5xWrk;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$MG73m0RtTJmDIfa6VdzyGV5xWrk;-><init>(Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ForceRefreshRatePackageList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ForceRefreshRatePackageList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ForceRefreshRatePackageList;->updateForcedPackagelist(Ljava/lang/String;)V

    return-void
.end method

.method private updateForcedPackagelist(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mForcedPackageList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    :try_start_1
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Float;

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    iget-object v9, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mForcedPackageList:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v8, Lcom/android/server/wm/ForceRefreshRatePackageList;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid refresh rate input! input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method findModeByRefreshRate(F)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getForceRefreshRateId(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mForcedPackageList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList;->mForcedPackageList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ForceRefreshRatePackageList;->findModeByRefreshRate(F)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
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
