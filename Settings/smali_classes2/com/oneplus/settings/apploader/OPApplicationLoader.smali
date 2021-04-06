.class public Lcom/oneplus/settings/apploader/OPApplicationLoader;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_CATEGORY_URI:Landroid/net/Uri;

.field public static mGameAppArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mGameAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllAppSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllAppSortBySelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllAppUnSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllQuickLaunchAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllQuickLaunchShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppOpsManager:Landroid/app/AppOpsManager;

.field protected mAppType:I

.field protected mContext:Landroid/content/Context;

.field protected mHandler1:Landroid/os/Handler;

.field protected mHasShowProgress:Z

.field protected mIsGameUnSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoading:Z

.field protected mLoadingContainer:Landroid/view/View;

.field protected mNeedLoadWorkProfileApps:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field protected mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowPromptRunnable:Ljava/lang/Runnable;

.field protected mShowPromptTime:J

.field protected mThreadPool:Ljava/util/concurrent/ExecutorService;

.field protected mUnSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserManager:Landroid/os/UserManager;

.field public final resolveinfoAlphaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->APP_CATEGORY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$6;

    invoke-direct {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$6;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchShortcuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->resolveinfoAlphaComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchShortcuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->resolveinfoAlphaComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    return-void
.end method

.method private getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAllAppList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object p0
.end method

.method public getAppListByType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchShortcuts:Ljava/util/List;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    return-object p0
.end method

.method protected getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0, p0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/os/UserHandle;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public initData(ILandroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    return p0
.end method

.method protected isThisUserAProfileOfCurrentUser(I)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public loadAllAppList()V
    .locals 12

    const-string v0, "com.oneplus.opbackup"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v1, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    :cond_1
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v5, 0x50

    if-eq v2, v5, :cond_4

    const-string v2, "com.oneplus.camera"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/4 v11, 0x1

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$array;->op_car_mode_recommended_apps:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v5, v3

    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_6

    aget-object v8, v2, v5

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v11

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->slaDownloadWhiteListFilter(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const-string v8, ""

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v5, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isInSlaDownLoadOpenAppsListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2, v11}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v0, "AppLockerDataController"

    const-string v1, "some unknown error happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public loadAllAppListSortBySelected(Z)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->multiAppPackageExcludeFilter(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    new-instance v10, Lcom/oneplus/settings/better/OPAppModel;

    const-string v7, ""

    move-object v4, v10

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "AppLockerDataController"

    const-string v0, "some unknown error happened."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public loadAllQuickLaunchAppList()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    const-string v7, ""

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "AppLockerDataController"

    const-string v1, "some unknown error happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public loadAllQuickLaunchShortcuts()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->resolveinfoAlphaComparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadShortcutByPackageName(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "AppLockerDataController"

    const-string v1, "some unknown error happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public loadAppListByType(I)V
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllQuickLaunchShortcuts()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllQuickLaunchAppList()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllAppListSortBySelected(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadUnSelectedAppList()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedAppList()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllAppList()V

    :goto_0
    return-void
.end method

.method protected loadGameApp()V
    .locals 7

    const-string v3, "category_id = 7"

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    const/4 v6, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->APP_CATEGORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "package_name"

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "AppLockerDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    sput-object p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    goto :goto_3

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public loadSelectedAppList()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v9, v3

    goto :goto_2

    :cond_5
    move v9, v2

    :goto_2
    if-eqz v9, :cond_3

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    const-string v7, ""

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "AppLockerDataController"

    const-string v1, "some unknown error happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public loadSelectedGameOrReadAppMap(I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x3eb

    if-ne p1, v2, :cond_5

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    if-ne v5, p1, :cond_6

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    return-object p0
.end method

.method protected loadShortcutByPackageName(Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    const-string v5, "launcherapps"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/LauncherApps;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v8

    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v9, "com.eg.android.AlipayGphone"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1001"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1002"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v9, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    move-object v10, v9

    move/from16 v14, p2

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v8, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/oneplus/settings/better/OPAppModel;->setAppLabel(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v8, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v8

    invoke-virtual {v9, v8}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    iget-object v8, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/oneplus/settings/better/OPAppModel;->setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v0, v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllQuickLaunchShortcuts:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public loadUnSelectedAppList()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v3, 0x3ec

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_5

    const-string v5, "com.google.android.documentsui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v10, v11

    goto :goto_2

    :cond_6
    move v10, v2

    :goto_2
    if-nez v10, :cond_3

    new-instance v12, Lcom/oneplus/settings/better/OPAppModel;

    const-string v8, ""

    move-object v5, v12

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v5, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    if-ne v1, v3, :cond_8

    sget-object v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v11}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v12, v2}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v12, v2}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "AppLockerDataController"

    const-string v1, "some unknown error happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method protected multiAppPackageExcludeFilter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->getMultiAppWhiteList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected final onPostExecute()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected packageExcludeFilter(Ljava/lang/String;)Z
    .locals 7

    iget v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.android.settings"

    const-string v3, "com.oneplus.deskclock"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x3e9

    if-eq v0, v6, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.heytap.market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.dialer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "net.oneplus.weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.gallery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.filemanager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.calculator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_3

    const-string v0, "com.oneplus.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.oneplus.note"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v5

    :cond_4
    :goto_3
    iget p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v1, 0x3eb

    if-ne p0, v1, :cond_8

    if-nez v0, :cond_6

    const-string p0, "com.oneplus.soundrecorder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.oneplus.camera"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.google.android.youtube"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.netflix.mediaclient"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_5
    const-string p0, "com.oneplus.carmode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.oneplus.speechassist"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.oneplus.gamespace"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    :goto_4
    move v4, v5

    :cond_7
    move v0, v4

    :cond_8
    return v0
.end method

.method public setAppType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    return-void
.end method

.method public setNeedLoadWorkProfileApps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    return-void
.end method

.method public setmLoadingContainer(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoadingContainer:Landroid/view/View;

    return-void
.end method

.method protected slaDownloadWhiteListFilter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->getSlaDownloadWhiteList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
