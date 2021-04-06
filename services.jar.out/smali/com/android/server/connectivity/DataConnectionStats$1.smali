.class Lcom/android/server/connectivity/DataConnectionStats$1;
.super Lcom/android/server/connectivity/FiveGStatusListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/FiveGStatusListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public on5GStatusChanged(IZZ)V
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on5GStatusChanged: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ddsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showFiveGService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", campOnFiveGService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataConnectionStats"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1, p3}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    :cond_0
    return-void
.end method
