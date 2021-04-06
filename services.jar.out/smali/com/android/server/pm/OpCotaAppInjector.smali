.class public Lcom/android/server/pm/OpCotaAppInjector;
.super Ljava/lang/Object;
.source "OpCotaAppInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PackageManager[CotaApp]"

.field private static sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCotaSystemApps(II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager[CotaApp]"

    const-string v1, "call OpCotaAppInjector.collectCotaSystemApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpCotaAppInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCotaAppManager;->collectCotaSystemApps(II)V

    :cond_1
    return-void
.end method

.method public static init(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager[CotaApp]"

    const-string v1, "call OpCotaAppInjector.init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpCotaAppInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/pm/IOpCotaAppManager;->init(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    :cond_1
    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_cota_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpCotaAppManager;

    sput-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    :cond_0
    return-void
.end method
