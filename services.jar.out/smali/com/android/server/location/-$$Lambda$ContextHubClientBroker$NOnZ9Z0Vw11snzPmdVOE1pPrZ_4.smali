.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/ContextHubClientBroker;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ContextHubClientBroker;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onNanoAppUnloaded$5$ContextHubClientBroker(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
