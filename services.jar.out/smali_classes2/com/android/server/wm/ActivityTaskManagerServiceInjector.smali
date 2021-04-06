.class public Lcom/android/server/wm/ActivityTaskManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final PROCESS_RESIDENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerInjector"

.field private static opProcessResident:Lcom/android/server/wm/IOpProcessResident;

.field public static sHypnusService:Lcom/android/internal/app/IHypnusService;

.field private static sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x5d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    new-array v0, v0, [I

    const/16 v2, 0xb0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllTopAppInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStartActivityFromRecents()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getStartActivityFromRecents()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTopRunningPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->getTopRunningPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpActivityTaskManagerService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IHypnusService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    return-void
.end method

.method public static isKeyguardGoingAway()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->isKeyguardGoingAway()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeTaskById(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityStackSupervisor;",
            "IZZ",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;I)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityTaskManagerInjector"

    const-string v1, "in framework.jar, ActivityTaskManagerServiceInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->PROCESS_RESIDENT_ENABLED:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpProcessResident;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->opProcessResident:Lcom/android/server/wm/IOpProcessResident;

    if-eqz v1, :cond_3

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/server/wm/IOpProcessResident;->removeTaskById(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    const-string v1, "remove-task"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IHypnusService;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sHypnusService:Lcom/android/internal/app/IHypnusService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IHypnusService;->hypnusSetScene(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HypnusService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManagerInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public static setStartActivityFromRecents(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setStartActivityFromRecents(Z)V

    :cond_0
    return-void
.end method

.method public static setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sOpActivityTaskManagerService:Lcom/android/server/wm/IOpActivityTaskManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityTaskManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    return-void
.end method
