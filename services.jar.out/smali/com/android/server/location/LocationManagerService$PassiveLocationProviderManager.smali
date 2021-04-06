.class Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;
.super Lcom/android/server/location/LocationManagerService$LocationProviderManager;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveLocationProviderManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    const-string/jumbo v0, "passive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/location/PassiveProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-super {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->getProvider()Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/PassiveProvider;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
