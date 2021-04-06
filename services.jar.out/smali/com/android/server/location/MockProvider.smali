.class public Lcom/android/server/location/MockProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockProvider.java"


# instance fields
.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderProperties;)V
    .locals 2

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/MockProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "last mock location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 0

    return-void
.end method

.method public setProviderAllowed(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/MockProvider;->setAllowed(Z)V

    return-void
.end method

.method public setProviderLocation(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/server/location/MockProvider;->reportLocation(Landroid/location/Location;)V

    return-void
.end method
