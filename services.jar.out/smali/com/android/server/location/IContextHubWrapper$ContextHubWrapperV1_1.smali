.class Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;
.super Lcom/android/server/location/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_1"
.end annotation


# instance fields
.field private mHub:Landroid/hardware/contexthub/V1_1/IContexthub;


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/IContextHubWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-void
.end method


# virtual methods
.method public getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-object v0
.end method

.method public onSettingChanged(BB)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IContextHubWrapper"

    const-string v2, "Failed to send setting change to Contexthub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public supportsSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
