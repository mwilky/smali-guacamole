.class public Landroid/net/util/DhcpResultsCompatUtil;
.super Ljava/lang/Object;
.source "DhcpResultsCompatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/DhcpResultsParcelable;)Landroid/net/DhcpResults;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    iget v1, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    iput v1, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v1, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    iput v1, v0, Landroid/net/DhcpResults;->mtu:I

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/shared/IpConfigurationParcelableUtil;->unparcelAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    iput-object v1, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->captivePortalApiUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-object v0
.end method
