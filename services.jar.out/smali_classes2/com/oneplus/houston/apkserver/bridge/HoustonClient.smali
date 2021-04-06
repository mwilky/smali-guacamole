.class public Lcom/oneplus/houston/apkserver/bridge/HoustonClient;
.super Ljava/lang/Object;
.source "HoustonClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;
    }
.end annotation


# static fields
.field private static final ARG_TYPE_DATA:I = 0x1

.field private static final ARG_TYPE_INTENT:I = 0x2

.field private static final ARG_TYPE_INTERGER:I = 0x0

.field private static final MAX_DELAY_ACCOUNT:I = 0x80

.field private static final MSG_BIND_SERVICE:I = 0x1

.field private static final MSG_SEND_EVENT:I = 0x2

.field private static final MSG_SEND_INIT:I = 0x3

.field private static final MSG_TEST:I = 0x0

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.orm"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.oneplus.orm.OPManagerService"

.field private static final TAG:Ljava/lang/String; = "HoustonClient"


# instance fields
.field private mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

.field private mContext:Landroid/content/Context;

.field private mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

.field private mEventListener:Lcom/oneplus/houston/common/client/IEvent;

.field private mPid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)Lcom/oneplus/houston/common/client/IEvent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->bindServiceIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->handleEvent(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->handleInitArgs(IILjava/lang/Object;)V

    return-void
.end method

.method private bindServiceIfNeeded()V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.orm.bind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.orm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "HoustonClient"

    const-string v2, "begin bind houston event server component!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, p0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private handleEvent(IILjava/lang/Object;)V
    .locals 5

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x80

    const/4 v2, -0x1

    if-nez p1, :cond_1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    move-object v3, p3

    check-cast v3, Lcom/oneplus/houston/common/client/Event;

    invoke-interface {v0, v3}, Lcom/oneplus/houston/common/client/IEvent;->onEvent(Lcom/oneplus/houston/common/client/Event;)V

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move-object v3, p3

    check-cast v3, Landroid/content/Intent;

    invoke-interface {v0, v3}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_0
    :try_start_1
    const-string v3, "HoustonClient"

    const-string v4, "Transforms event failed!"

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-le v0, v1, :cond_5

    monitor-enter p0

    :try_start_2
    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "houston_server maybe hung, killed pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :goto_1
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-le v2, v1, :cond_3

    monitor-enter p0

    :try_start_3
    const-string v1, "HoustonClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "houston_server maybe hung, killed pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_3
    :goto_2
    throw v0

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-le v0, v1, :cond_5

    monitor-enter p0

    :try_start_4
    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "houston_server maybe hung, killed pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    monitor-exit p0

    goto :goto_4

    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :cond_5
    :goto_4
    nop

    return-void

    :cond_6
    :goto_5
    return-void
.end method

.method private handleInitArgs(IILjava/lang/Object;)V
    .locals 5

    const-string v0, "HoustonClient"

    :try_start_0
    const-string v1, "handleInitArgs"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/houston/common/client/parcel/InitArg;

    invoke-direct {v1}, Lcom/oneplus/houston/common/client/parcel/InitArg;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    iget-object v2, v1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mExtra:Landroid/os/Bundle;

    const-string v3, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, p3

    check-cast v2, Lcom/oneplus/houston/common/client/IEvent;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->fillProcesses(Lcom/oneplus/houston/common/client/parcel/InitArg;)V

    invoke-interface {v2, v1}, Lcom/oneplus/houston/common/client/IEvent;->onInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Transforms event failed!"

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isBinded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/houston/common/client/IEvent;->dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HoustonClient"

    const-string v2, "Dump data failed!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->myPid()I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HoustonClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    :goto_0
    invoke-interface {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;->onServiceConnected()V

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    invoke-interface {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;->onServiceConnected()V

    :cond_1
    nop

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HoustonClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mPid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "HoustonClient"

    const-string v1, "Houston server force died as Houston app has exited!"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleProcessEvent(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDelayedEventAccount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setConnectedCallback(Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mConnectedCallback:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;

    return-void
.end method

.method public systemReady()V
    .locals 4

    const-string v0, "HoustonClient"

    const-string v1, "houston systemReady"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->mDispatcherHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
