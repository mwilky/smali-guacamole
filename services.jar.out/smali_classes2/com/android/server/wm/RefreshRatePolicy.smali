.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# static fields
.field static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field private final mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

.field private final mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

.field private final mLowRefreshRateId:I

.field private final mNonHighRefreshRatePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/ForceRefreshRatePackageList;

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/ForceRefreshRatePackageList;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    return-void
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    aget v2, v1, v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v3

    return v3
.end method


# virtual methods
.method addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method calculatePriority(Lcom/android/server/wm/WindowState;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    if-nez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRateId(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v1
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method
