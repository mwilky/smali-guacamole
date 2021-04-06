.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
.super Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;
.source "WindowMagnificationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field private mExpiredDeathRecipient:Z

.field final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return p1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowMagnificationMgr"

    const-string v2, "binderDied DeathRecipient is expired"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$302(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChangeMagnificationMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
