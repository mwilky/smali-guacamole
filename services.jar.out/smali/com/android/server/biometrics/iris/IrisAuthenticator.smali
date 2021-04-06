.class public final Lcom/android/server/biometrics/iris/IrisAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "IrisAuthenticator.java"


# instance fields
.field private final mIrisService:Landroid/hardware/iris/IIrisService;


# direct methods
.method public constructor <init>(Landroid/hardware/iris/IIrisService;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/iris/IrisAuthenticator;->mIrisService:Landroid/hardware/iris/IIrisService;

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getAuthenticatorId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public resetLockout([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setActiveUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startPreparedClient(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
