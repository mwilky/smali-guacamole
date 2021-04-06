.class public Lcom/android/server/location/MockableLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockableLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
    }
.end annotation


# instance fields
.field private mMockProvider:Lcom/android/server/location/MockProvider;

.field private final mOwnerLock:Ljava/lang/Object;

.field private mProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/location/AbstractLocationProvider$Listener;)V
    .locals 2

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {p0, p2}, Lcom/android/server/location/MockableLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    return-object v0
.end method

.method private setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    sget-object v2, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne v2, v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "properties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentRequest()Lcom/android/internal/location/ProviderRequest;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvider()Lcom/android/server/location/AbstractLocationProvider;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMock()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderAllowed(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderLocation(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
