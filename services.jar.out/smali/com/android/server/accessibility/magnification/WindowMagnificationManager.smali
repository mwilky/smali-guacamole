.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowMagnificationMgr"


# instance fields
.field private mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-object p1
.end method


# virtual methods
.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->access$002(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "WindowMagnificationMgr"

    const-string/jumbo v4, "setConnection failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
