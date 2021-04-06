.class public Lcom/android/server/am/OpStartAppControlInjector;
.super Ljava/lang/Object;
.source "OpStartAppControlInjector.java"


# static fields
.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OnePlusStartAppControl"

.field private static mStartAppControl:Lcom/android/server/am/IOpStartAppControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x13

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityFinished(Landroid/content/pm/ActivityInfo;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->activityFinished(Landroid/content/pm/ActivityInfo;)V

    :cond_0
    return-void
.end method

.method public static addAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->addAccessibilityService(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public static appBecomeVisible(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->appBecomeVisible(I)V

    :cond_0
    return-void
.end method

.method public static canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canInstrumentationGo(Landroid/content/ComponentName;I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canInstrumentationGo(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canJobSchedulerGo(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canJobSchedulerGo(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpStartAppControl;->canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Randle"

    if-nez p2, :cond_1

    const-string/jumbo v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p3, :cond_2

    const-string v1, "callee is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getJobTimeout()J
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0}, Lcom/android/server/am/IOpStartAppControl;->getJobTimeout()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public static initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->initAms(Lcom/android/server/am/ActivityManagerService;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_start_app_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpStartAppControl;

    sput-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    :cond_0
    return-void
.end method

.method public static initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method public static isJobRestrict(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->isJobRestrict(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->removeAccessibilityService(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public static reportRestrictJob(Ljava/lang/Object;J)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpStartAppControl;->reportRestrictJob(Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public static setCurrentIME(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->setCurrentIME(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setCurrentWallpaper(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->setCurrentWallpaper(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpStartAppControl;->skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static updateAccessibilityService(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateAccessibilityService(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public static updateGMSActionSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateGMSActionSet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static updateGMSRestrict(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateGMSRestrict(Z)V

    :cond_0
    return-void
.end method

.method public static updateHighPowerUsagePackage(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateHighPowerUsagePackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static updateHighPowerUsagePackages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpStartAppControl;->updateHighPowerUsagePackages(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public static updateWidgetComponent(Landroid/content/ComponentName;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpStartAppControlInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpStartAppControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpStartAppControlInjector;->mStartAppControl:Lcom/android/server/am/IOpStartAppControl;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpStartAppControl;->updateWidgetComponent(Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method
