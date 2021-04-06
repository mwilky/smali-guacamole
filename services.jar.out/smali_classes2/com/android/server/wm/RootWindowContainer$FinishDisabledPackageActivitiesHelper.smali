.class Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishDisabledPackageActivitiesHelper"
.end annotation


# instance fields
.field private mDidSomething:Z

.field private mDoit:Z

.field private mEvenPersistent:Z

.field private mFilterByClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeActivity:Landroid/content/ComponentName;

.field private mLastTask:Lcom/android/server/wm/Task;

.field private mPackageName:Ljava/lang/String;

.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$XWfRTrqNP6c1kx7wtT2Pvy6K9-c(Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    if-ne v3, v4, :cond_a

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    if-ne v3, v4, :cond_a

    :cond_4
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    if-nez v3, :cond_7

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    const-string v4, "WindowManager"

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mHomeActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip force-stop again "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mHomeActivity:Landroid/content/ComponentName;

    :cond_9
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDidSomething:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    const-string v3, "force-stop"

    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_a
    return v2
.end method

.method private reset(Ljava/lang/String;Ljava/util/Set;ZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDidSomething:Z

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    iput p5, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mHomeActivity:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method process(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->reset(Ljava/lang/String;Ljava/util/Set;ZZI)V

    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$FinishDisabledPackageActivitiesHelper$XWfRTrqNP6c1kx7wtT2Pvy6K9-c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$FinishDisabledPackageActivitiesHelper$XWfRTrqNP6c1kx7wtT2Pvy6K9-c;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDidSomething:Z

    return v1
.end method
