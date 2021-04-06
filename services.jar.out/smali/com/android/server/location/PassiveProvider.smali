.class public Lcom/android/server/location/PassiveProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "PassiveProvider.java"


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;


# instance fields
.field private volatile mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v10, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    sget-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v0}, Lcom/android/server/location/PassiveProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/PassiveProvider;->setAllowed(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/location/PassiveProvider;->reportLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
