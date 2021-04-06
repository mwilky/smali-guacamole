.class public Lcom/android/server/connectivity/NetworkRanker;
.super Ljava/lang/Object;
.source "NetworkRanker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestNetwork(Landroid/net/NetworkRequest;Ljava/util/Collection;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;)",
            "Lcom/android/server/connectivity/NetworkAgentInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v9, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v5, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    if-gt v3, v1, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v8, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object v4, v0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/ConnectivityService;->isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v9

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0
.end method
