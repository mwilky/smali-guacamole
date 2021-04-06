.class Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;
.super Landroid/net/INetworkMonitorCallbacks$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitorCallbacks"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/AutodestructReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/connectivity/AutodestructReference<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;-><init>()V

    iget-object p1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    new-instance p1, Lcom/android/server/connectivity/AutodestructReference;

    invoke-direct {p1, p2}, Lcom/android/server/connectivity/AutodestructReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "02cd6fd07d5c04eca0c35a350f7b0be576242883"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public hideProvisioningNotification()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v0, p1, v1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/net/DataStallReportParcelable;I)V

    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deprecated notifyNetworkTested called: no action taken"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v5, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyNetworkTestedWithExtras isPartial = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , isValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v6, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string v9, ""

    iget-object v10, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v10, "CN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-ne v2, v4, :cond_4

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "notifyNetworkTestedWithExtras H2 change partial to valid - setAcceptPartialConnectivity"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "notifyNetworkTestedWithExtras H2 change partial to valid - update result"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    :cond_4
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    iget-object v4, v1, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v4

    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/oneplus/android/wifi/IOpWifiManager;->checkDupMac(Ljava/lang/String;)Z

    :cond_5
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    new-instance v15, Lcom/android/server/ConnectivityService$NetworkTestedResults;

    iget v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    iget-wide v13, v1, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    iget-object v10, v1, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v17, v10

    move-object v10, v15

    move/from16 v18, v2

    move-object v2, v15

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/android/server/ConnectivityService$NetworkTestedResults;-><init>(IIJLjava/lang/String;Lcom/android/server/ConnectivityService$1;)V

    const/16 v10, 0x29

    invoke-virtual {v4, v10, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v4, v11}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    iget-object v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, v11, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    new-instance v12, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;

    iget-wide v13, v1, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v4, v15}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;-><init>(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v11, v10, v12}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    const-string/jumbo v13, "networkValidationResult"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->probesSucceeded:I

    const-string/jumbo v13, "networkProbesSucceeded"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->probesAttempted:I

    const-string/jumbo v13, "networkProbesAttempted"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v10, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, v12, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    invoke-virtual {v12, v10}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {p1}, Landroid/net/shared/PrivateDnsConfig;->fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyProbeStatusChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x2d

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    invoke-virtual {v3}, Lcom/android/server/connectivity/AutodestructReference;->getAndDestroy()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v5

    const/16 v6, 0x2b

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
