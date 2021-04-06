.class Lcom/android/server/am/cjf$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/cjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/cjf;


# direct methods
.method constructor <init>(Lcom/android/server/am/cjf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/cjf$sis;->zta:Lcom/android/server/am/cjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/cjf;->zta()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "OPVIPBroadcastController"

    const-string v2, "updateConfig"

    invoke-static {v1, v2}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/cjf$sis;->zta:Lcom/android/server/am/cjf;

    invoke-static {p0, p1}, Lcom/android/server/am/cjf;->you(Lcom/android/server/am/cjf;Lorg/json/JSONArray;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
