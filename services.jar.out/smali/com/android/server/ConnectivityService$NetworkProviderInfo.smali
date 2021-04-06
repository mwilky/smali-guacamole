.class Lcom/android/server/ConnectivityService$NetworkProviderInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkProviderInfo"
.end annotation


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;

.field public final providerId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;ILandroid/os/IBinder$DeathRecipient;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    iput p4, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->providerId:I

    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must pass exactly one of asyncChannel or deathRecipient"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method cancelRequest(Landroid/net/NetworkRequest;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method completeConnection()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    :goto_0
    return-void
.end method

.method isLegacyNetworkFactory()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method requestNetwork(Landroid/net/NetworkRequest;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method sendMessageToNetworkProvider(IIILjava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
