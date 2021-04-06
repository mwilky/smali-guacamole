.class public Lcom/android/server/biometrics/iris/IrisService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IrisService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/iris/IrisService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/iris/IrisService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/iris/IrisService;->initConfiguredStrengthInternal(I)V

    return-void
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkUseBiometricPermission()V
    .locals 0

    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLockoutMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "IrisService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    new-instance v0, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/iris/IrisService;Lcom/android/server/biometrics/iris/IrisService$1;)V

    const-string/jumbo v1, "iris"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/iris/IrisService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method protected statsModality()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
