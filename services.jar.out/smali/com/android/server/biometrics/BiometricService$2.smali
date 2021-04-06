.class Lcom/android/server/biometrics/BiometricService$2;
.super Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(Z[BZ)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onSystemEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTryAgainPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
