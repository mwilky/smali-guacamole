.class public abstract Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssAntennaInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssAntennaInfoListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssAntennaInfoProvider"


# instance fields
.field private mIsListeningStarted:Z

.field private final mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssAntennaInfoProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;)V
    .locals 1

    const-string v0, "GnssAntennaInfoProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getHandlerOperation$0(Landroid/location/IGnssAntennaInfoListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$6tStkOUFQdyPwrIlenWNx1CLtUg;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$6tStkOUFQdyPwrIlenWNx1CLtUg;

    return-object v0
.end method

.method public isAvailableInPlatform()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->isAntennaInfoSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onGnssAntennaInfoAvailable$1$GnssAntennaInfoProvider(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "GnssAntennaInfoProvider"

    const-string v2, "GNSS antenna info"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p2, p1}, Landroid/location/IGnssAntennaInfoListener;->onGnssAntennaInfoReceived(Ljava/util/List;)V

    return-void
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->setSupported(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->updateResult()V

    return-void
.end method

.method public onGnssAntennaInfoAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$jWS_iJ6LE00DEMXMePHMZafshRk;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$jWS_iJ6LE00DEMXMePHMZafshRk;-><init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->tryUpdateRegistrationWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->updateResult()V

    return-void
.end method

.method protected registerWithService()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->startAntennaInfoListening()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssAntennaInfoProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->startAntennaInfoListening()Z

    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->stopAntennaInfoListening()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    :cond_0
    return-void
.end method
