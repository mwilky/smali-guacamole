.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_RATE_IN_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final OPLUS_AUTO_MODE:I = 0x2

.field private static final OPLUS_MAX_120_HZ:I = 0x0

.field private static final OPLUS_MAX_60_HZ:I = 0x1

.field private static final OPLUS_SCREEN_REFRESH_RATE:Ljava/lang/String; = "oneplus_screen_refresh_rate"

.field private static final REFRESH_RATE_120_HZ:F = 120.0f

.field private static final REFRESH_RATE_60_HZ:F = 60.0f

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private final mLock:Ljava/lang/Object;

.field private mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    const-string v6, "Discarding mode "

    const-string v7, "DisplayModeDirector"

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v8, 0x3c23d70a    # 0.01f

    sub-float/2addr v5, v8

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_2

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", outside refresh rate bounds: minRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", maxRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", modeRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wrong size: desiredWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": desiredHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": actualWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": actualHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-object v2
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;I",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    const/16 v0, 0xc

    :goto_0
    if-lt v0, p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVoteLocked(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_3

    const/16 v0, 0xc

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No votes left for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/16 v3, 0xc

    :goto_3
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 14

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x1

    new-array v5, v4, [I

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    new-instance v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v6}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0xc

    if-gt v8, v9, :cond_4

    invoke-direct {p0, v1, v8, v6}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v9, v10, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    iput v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    iput v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    :cond_2
    invoke-direct {p0, v2, v6}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I

    move-result-object v9

    move-object v5, v9

    array-length v9, v5

    if-lez v9, :cond_3

    const-string v9, "DisplayModeDirector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found available modes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with lowest priority considered "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " and constraints: width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", minRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", maxRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v9, "DisplayModeDirector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " and with the following constraints: width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", minRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", maxRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    new-instance v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v9}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    const/4 v10, 0x3

    invoke-direct {p0, v1, v10, v9}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    iget v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    const-string v10, "DisplayModeDirector"

    const-string v11, "App request range: [%.0f %.0f]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v7

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    array-length v10, v5

    if-lez v10, :cond_5

    aget v7, v5, v7

    move v4, v7

    :cond_5
    invoke-static {v4}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->setBaseModeId(I)V

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v10, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v10, v11, v12}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    new-instance v11, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v12, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v11, v12, v13}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    invoke-direct {v7, v4, v10, v11}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V

    monitor-exit v0

    return-object v7

    :cond_6
    :goto_2
    const-string v4, "DisplayModeDirector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v4}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$000(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    return-object v0
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public notifyRefreshRatePolicyChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
