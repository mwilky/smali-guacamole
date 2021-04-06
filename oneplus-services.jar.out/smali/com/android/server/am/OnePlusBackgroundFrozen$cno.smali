.class Lcom/android/server/am/OnePlusBackgroundFrozen$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field bio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field cno:J

.field dma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field gck:Ljava/lang/String;

.field igw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field kth:Ljava/lang/String;

.field oif:Z

.field qbh:J

.field rtg:Ljava/lang/String;

.field sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

.field ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tsu:J

.field wtn:J

.field you:Ljava/lang/String;

.field ywr:J

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:Ljava/util/ArrayList;

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma:Ljava/util/ArrayList;

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    iget p1, p2, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    iget-object p1, p2, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ire()V

    return-void
.end method

.method private bvj()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v3, 0x18

    invoke-static {p0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b0()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " m1:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    iget-wide v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reach R2 Limit, last:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " origin:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROZEN_MAXSIZE_R2:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " FROZEN_TIMEOUT_R2:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b0()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " initialTimeR2:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gwm(I)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ire()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cjf()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->vdb()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    sub-long/2addr v4, v6

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x258

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c0()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ibl()V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oxb()V

    return-void
.end method

.method private ear()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fto(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    return-void
.end method

.method static synthetic gck(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->obl()V

    return-void
.end method

.method private hmo()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ibl()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v2, 0x18

    invoke-static {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cjf()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " m1:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    iget-wide v3, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reach R3 Limit, FrozenDuration:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->vdb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " totalDur:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ratioR3:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c0()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " initialTimeR3:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gwm(I)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->hmo()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic igw(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->hmo()V

    return-void
.end method

.method private ire()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ear()V

    return-void
.end method

.method private lqr(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private obl()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x1a

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private oif()V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v2, 0x18

    invoke-static {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    sub-long/2addr v2, v6

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Z()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " m1:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    iget-wide v6, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reach R1 Limit, cur:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " FROZEN_TIMEOUT_R1:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Z()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " initialTimeR1:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gwm(I)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ear()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private oxb()V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v2, 0x1a

    invoke-static {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    iput-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private qbh()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W()I

    move-result v1

    const-wide/16 v2, 0x3e8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->lqr(Z)V

    return-void
.end method

.method private vdb()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->oif:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->qbh:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ywr:J

    monitor-exit p0

    return-wide v0

    :cond_1
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic wtn(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zgw()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj()V

    return-void
.end method

.method private ywr(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x17

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zgw()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    const/16 v1, 0x1a

    invoke-static {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->fto(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public gwm(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ugm(IZ)V

    return-void
.end method

.method public ugm(IZ)V
    .locals 9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->tsu:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const-string v3, ""

    move-object v5, p2

    move-object p2, v3

    move-wide v3, v0

    :goto_0
    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string p1, "# FrozenHistory # initialTime = 0, return"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    iget-boolean v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string p1, "# FrozenHistory # systemFlag and not isolated, return"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    sub-long/2addr v0, v3

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# FrozenHistory # uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>begin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# FrozenHistory # pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " init:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " initialTime:"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " duration:"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " state:"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z

    move-result p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    const-string v0, "FrozenHistory"

    invoke-static {p2, v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ZLjava/lang/String;)V

    const/4 p2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# FrozenHistory # i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " his = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# FrozenHistory # uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " type:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
