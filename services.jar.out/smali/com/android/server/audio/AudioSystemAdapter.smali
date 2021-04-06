.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v0}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDeviceConnectionState(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isStreamActive(II)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public muteMicrophone(Z)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result v0

    return v0
.end method

.method public removePreferredDeviceForStrategy(I)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->removePreferredDeviceForStrategy(I)I

    move-result v0

    return v0
.end method

.method public setCurrentImeUid(I)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result v0

    return v0
.end method

.method public setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    return v0
.end method
