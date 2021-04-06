.class Lcom/android/server/am/OnePlusBackgroundFrozen$bio;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "bio"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->G(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v7, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_0
    if-ne p1, v4, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_1
    if-ne p1, v3, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v7, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_2
    if-ne p1, v4, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_3
    if-ne p1, v3, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v7, :cond_4

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_4
    if-ne p1, v4, :cond_5

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :cond_5
    if-ne p1, v3, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v7, :cond_6

    move v6, v7

    :cond_6
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i(Lcom/android/server/am/OnePlusBackgroundFrozen;Z)V

    goto/16 :goto_4

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v7, :cond_7

    move v6, v7

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p1, "TRAFFIC_HIGH"

    goto :goto_0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v7, :cond_8

    move v6, v7

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p1, "DOWNLOAD"

    :goto_0
    invoke-static {p0, p1, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->les(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p1, "AUDIO"

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->les(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p1, "FOREGROUND_SWITCH_PROTECT"

    :goto_1
    invoke-static {p0, p1, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V

    :cond_9
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V

    goto/16 :goto_4

    :pswitch_b
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v1, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-static {p0, v1, v0, v6, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->H(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;IZZ)I

    move-result p0

    if-nez p0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do freeze for uid is not shown fg notification, uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    monitor-enter p1

    :try_start_0
    iput-boolean v6, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v7, :cond_a

    move v6, v7

    :cond_a
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p1

    if-eqz p1, :cond_b

    if-eqz v6, :cond_b

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object p1, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-static {v1, v0, p1, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;Z)V

    :cond_b
    if-eqz v6, :cond_13

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMPERCEPTIBLE_CHANGE change to:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause by:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v7, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_d
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_OPT_APPLIST_CHANGE e:"

    goto/16 :goto_3

    :pswitch_e
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z

    move-result p1

    const/16 v1, 0xd

    if-nez p1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_c
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p0

    if-eqz p0, :cond_13

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " there is also the same uid message behind, return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event removeForegroundSwitchProtect uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V

    monitor-exit p0

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_e

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_e
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v2, "writePidToTasksFile"

    invoke-static {p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0, v1, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g(Lcom/android/server/am/OnePlusBackgroundFrozen;IIZ)V

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_4

    :pswitch_10
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    goto/16 :goto_4

    :pswitch_11
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c(Lcom/android/server/am/OnePlusBackgroundFrozen;II)V

    goto/16 :goto_4

    :pswitch_13
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    goto/16 :goto_4

    :pswitch_14
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_f

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashSet;

    if-eqz v1, :cond_f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    :cond_f
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ivd(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/util/HashSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_IMPORTANT_CHANGE e:"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBF"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_15
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_4

    :pswitch_16
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    goto/16 :goto_4

    :pswitch_17
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_4

    :pswitch_18
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_4

    :pswitch_19
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0()Z

    move-result p1

    if-nez p1, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sEnable:false , return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z

    move-result p1

    if-nez p1, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1, v0, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->les(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1, v0, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v3, "uid to freeze"

    invoke-static {v1, v0, v7, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " there is also the same uid message behind, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v1, "handleDelayFreeze"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0, p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1a
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessFreezer"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E(Lcom/android/server/am/OnePlusBackgroundFrozen;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->oif(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh(Lcom/android/server/am/OnePlusBackgroundFrozen;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_opbf_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$dma;

    move-result-object v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_13
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
