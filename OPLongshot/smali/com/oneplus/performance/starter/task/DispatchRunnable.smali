.class public Lcom/oneplus/performance/starter/task/DispatchRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mLauncherStarter:Lb/b/d/a/a;

.field private mTask:Lcom/oneplus/performance/starter/task/b;


# direct methods
.method public constructor <init>(Lcom/oneplus/performance/starter/task/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/performance/starter/task/b;Lb/b/d/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    iput-object p2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mLauncherStarter:Lb/b/d/a/a;

    return-void
.end method

.method private printTaskLog(JJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {}, Lb/b/d/a/c/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  wait "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "    run "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "   isMain "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  needWait "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {p2}, Lcom/oneplus/performance/starter/task/b;->c()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move p4, v0

    :cond_2
    :goto_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  ThreadId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "  ThreadName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Situation  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb/b/d/a/b/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/b/d/a/c/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lb/b/d/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " begin run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Situation  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb/b/d/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/d/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v0}, Lcom/oneplus/performance/starter/task/b;->d()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/performance/starter/task/b;->h(Z)V

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v2}, Lcom/oneplus/performance/starter/task/b;->i()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v2, v3}, Lcom/oneplus/performance/starter/task/b;->g(Z)V

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-interface {v2}, Lcom/oneplus/performance/starter/task/a;->run()V

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v2}, Lcom/oneplus/performance/starter/task/b;->a()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v2}, Lcom/oneplus/performance/starter/task/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v2}, Lcom/oneplus/performance/starter/task/b;->e()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/oneplus/performance/starter/task/DispatchRunnable;->printTaskLog(JJ)V

    invoke-static {}, Lb/b/d/a/b/a;->b()V

    iget-object v0, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v0, v3}, Lcom/oneplus/performance/starter/task/b;->f(Z)V

    iget-object v0, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mLauncherStarter:Lb/b/d/a/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v0, v1}, Lb/b/d/a/a;->b(Lcom/oneplus/performance/starter/task/b;)V

    iget-object v0, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mLauncherStarter:Lb/b/d/a/a;

    iget-object v1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v0, v1}, Lb/b/d/a/a;->a(Lcom/oneplus/performance/starter/task/b;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/performance/starter/task/DispatchRunnable;->mTask:Lcom/oneplus/performance/starter/task/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/d/a/c/a;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lb/b/d/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5
    return-void
.end method
