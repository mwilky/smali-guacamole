.class Lcom/android/server/connectivity/FiveGStatusListener$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
.source "FiveGStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/FiveGStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/FiveGStatusListener;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on5gConfigInfo: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NrConfigType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/FiveGServiceState;->setNrConfigType(I)V

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1100(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    new-array v2, v1, [I

    const/16 v3, 0x49

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ro.boot.opcarrier"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tmo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1000(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x403

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1000(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on5gStatus: slotId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enableStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnyNrBearerAllocation bearerStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setBearerAllocationStatus(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1100(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNrDcParam: slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dcParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setDcnr(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1100(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNrIconType: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NrIconType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setNrIconType(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1100(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrength: slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1000(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x402

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1000(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpperLayerIndInfo plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " upperLayerIndInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setPlmn(I)V

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setUpperLayerInd(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$1100(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    :cond_0
    return-void
.end method
