.class Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->les(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    goto :goto_0

    :cond_0
    const-string p1, "OpSlaNetlinkHelper"

    const-string v0, "SLA disabled by app Settings, disableSla().."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->hmo(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vju(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    :cond_2
    :goto_0
    return-void
.end method
