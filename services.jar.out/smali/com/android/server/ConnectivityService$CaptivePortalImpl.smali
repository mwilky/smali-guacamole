.class Lcom/android/server/ConnectivityService$CaptivePortalImpl;
.super Landroid/net/ICaptivePortal$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalImpl"
.end annotation


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    return-void
.end method

.method private getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    :cond_1
    return-void
.end method

.method public appResponse(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->getNetworkMonitorManager(Landroid/net/Network;)Landroid/net/NetworkMonitorManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/NetworkMonitorManager;->notifyCaptivePortalAppFinished(I)Z

    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    return-void
.end method
