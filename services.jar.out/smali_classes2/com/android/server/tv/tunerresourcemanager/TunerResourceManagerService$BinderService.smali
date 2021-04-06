.class final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
.super Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.source "TunerResourceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V

    return-void
.end method


# virtual methods
.method public isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "isHigherPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Client profiles can\'t be null."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$300(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isDefinedUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use undefined client use case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IResourcesReclaimListener can\'t be null!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "clientId can\'t be null!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ResourceClientProfile can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseCasSession(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Client is not the current owner of the releasing cas."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Releasing cas does not exist."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release cas from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "casSessionHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseDemux(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseDemux(demuxHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public releaseDescrambler(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseDescrambler(descramblerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public releaseFrontend(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Client is not the current owner of the releasing fe."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Releasing frontend does not exist."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release frontend from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "frontendHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseLnb(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Client is not the current owner of the releasing lnb."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Releasing lnb does not exist."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release lnb from unregistered client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "lnbHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request cas from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "casSessionHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request demux from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "demuxHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$600(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request descrambler from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "descramblerHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request frontend from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "frontendHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request lnb from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "lnbHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "setFrontendInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "TunerFrontendInfo can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLnbInfoList([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "setLnbInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setLnbInfoListInternal([I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Lnb id list can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shareFrontend(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "shareFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unregisterClientProfile(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "unregisterClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering non exists client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unregisterClientProfileInternal(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCasInfo(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "updateCasInfo"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasInfoInternal(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateClientPriority(III)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "updateClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateClientPriorityInternal(III)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
