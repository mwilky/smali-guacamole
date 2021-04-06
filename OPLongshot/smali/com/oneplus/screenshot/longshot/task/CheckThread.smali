.class public Lcom/oneplus/screenshot/longshot/task/CheckThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source ""


# static fields
.field private static final CHECK_DELAY:J = 0x32L

.field public static final TAG:Ljava/lang/String; = "Longshot.CheckThread"


# instance fields
.field private mIsStopped:Z

.field private mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/oneplus/screenshot/longshot/task/BaseThread;->mDelay:J

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    return-object p0
.end method

.method private isActivityChanged(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v2, "Longshot.CheckThread"

    const-string v3, "CHANGED : different top activity!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "["

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "   =>"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "]"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method protected onRun()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->isActivityChanged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isActivityChangedDuringLongshot:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;-><init>(Lcom/oneplus/screenshot/longshot/task/CheckThread;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
