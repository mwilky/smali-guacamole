.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$ServiceInfo;,
        Lcom/android/server/ServiceWatcher$BlockingBinderRunner;,
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final BLOCKING_BINDER_TIMEOUT_MS:J = 0x7530L

.field private static final D:Z

.field private static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field private static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field private volatile mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

.field private final mOnUnbind:Ljava/lang/Runnable;

.field private volatile mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iput-object p4, p0, Lcom/android/server/ServiceWatcher;->mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

    iput-object p5, p0, Lcom/android/server/ServiceWatcher;->mOnUnbind:Ljava/lang/Runnable;

    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    sget-object v2, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBestServiceChanged(Z)V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    const v2, 0x10100080

    iget v3, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v4, Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget v5, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/ServiceWatcher$ServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v4, v1}, Lcom/android/server/ServiceWatcher$ServiceInfo;->compareTo(Lcom/android/server/ServiceWatcher$ServiceInfo;)I

    move-result v5

    if-lez v5, :cond_1

    move-object v1, v4

    :cond_1
    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/ServiceWatcher;->rebind(Lcom/android/server/ServiceWatcher$ServiceInfo;)V

    :cond_4
    return-void
.end method

.method private rebind(Lcom/android/server/ServiceWatcher$ServiceInfo;)V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    sget-object v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ServiceWatcher"

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] unbinding from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/ServiceWatcher;->onServiceDisconnected(Landroid/content/ComponentName;)V

    sget-object v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    :cond_2
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    sget-object v4, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v4}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binding to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v1, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v5, 0x40000005    # 2.0000012f

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget v1, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v0

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    return-void
.end method

.method private runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x7530

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBoundService()Lcom/android/server/ServiceWatcher$ServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    return-object v0
.end method

.method public synthetic lambda$register$0$ServiceWatcher()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    return-void
.end method

.method public synthetic lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, v0}, Lcom/android/server/ServiceWatcher$BlockingBinderRunner;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    return-void
.end method

.method onPackageChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    const-string v1, "ServiceWatcher"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exception running on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mOnUnbind:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method onUserSwitched(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    return-void
.end method

.method onUserUnlocked(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    :cond_0
    return-void
.end method

.method public register()Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x1c0000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/ServiceWatcher$1;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v6, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v4
.end method

.method public final runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;-><init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher$ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
