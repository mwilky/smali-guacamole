.class Lcom/android/server/wm/RootWindowContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/server/wm/Task;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cls:Landroid/content/ComponentName;

.field private documentData:Landroid/net/Uri;

.field private info:Landroid/content/pm/ActivityInfo;

.field private intent:Landroid/content/Intent;

.field private isDocument:Z

.field mIdealMatch:Z

.field mRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTarget:Lcom/android/server/wm/ActivityRecord;

.field private userId:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 14

    iget-object v0, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const-string v1, "Skipping "

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "WindowManager"

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": voice session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    :cond_1
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-eq v0, v5, :cond_3

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": different user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpWmInjector;->topActivitySingleInstance(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mismatch root "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v3

    :cond_5
    iget v5, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-eq v5, v6, :cond_7

    invoke-static {v0, v6}, Lcom/android/server/wm/OpWmInjector;->checkUserRelation(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r.userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; Because parallel app,the userId of the task\'s topActivity is different from the application userId. So pass the check of userId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    return-object v3

    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mismatch activity type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v3

    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Comparing existing cls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_c

    iget-object v9, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_c
    const-string v9, ""

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/aff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to new cls="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v8, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const-string v9, " bringing to top: "

    const-string v10, "For Intent "

    const-string v11, "Found matching class!"

    const/4 v12, 0x1

    if-eqz v8, :cond_10

    iget-object v8, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v13, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v8, v13}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_e

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v12, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_10
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v13, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v8, v13}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v12, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_13
    iget-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    if-nez v8, :cond_15

    if-nez v6, :cond_15

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_15

    iget-object v8, p1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v8, :cond_15

    iget-object v8, p1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_14

    const-string v8, "Found matching affinity candidate!"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    goto :goto_3

    :cond_15
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a match: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_3
    return-object v3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->apply(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    return-void
.end method

.method process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for task of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Function;)Z

    return-void
.end method

.method setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    return-void
.end method
