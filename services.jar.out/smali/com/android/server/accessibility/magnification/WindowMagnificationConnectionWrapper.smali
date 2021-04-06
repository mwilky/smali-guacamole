.class Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
.super Ljava/lang/Object;
.source "WindowMagnificationConnectionWrapper.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowMagnificationConnectionWrapper"


# instance fields
.field private final mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;


# direct methods
.method constructor <init>(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    return-void
.end method


# virtual methods
.method disableWindowMagnification(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->disableWindowMagnification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method enableWindowMagnification(IFFF)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/accessibility/IWindowMagnificationConnection;->enableWindowMagnification(IFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method moveWindowMagnifier(IFF)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/accessibility/IWindowMagnificationConnection;->moveWindowMagnifier(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method setScale(IF)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnection;->setScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
