.class Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bvj"
.end annotation


# static fields
.field private static final s:I = 0x1

.field private static final t:I = 0x2

.field private static final u:I = 0x3

.field private static final v:I = 0x4

.field private static final w:I = 0x4


# instance fields
.field a:Z

.field b:Z

.field bio:Z

.field bud:J

.field bvj:I

.field c:Z

.field cgv:Z

.field cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

.field cno:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field dma:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

.field f:Z

.field fto:[Ljava/lang/String;

.field g:Z

.field gck:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field gwm:I

.field h:Z

.field hmo:Ljava/lang/String;

.field i:Z

.field ibl:I

.field igw:I

.field ire:Ljava/lang/String;

.field irq:J

.field ivd:Z

.field j:Z

.field k:Z

.field kth:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field les:J

.field lqr:I

.field m:Z

.field n:Z

.field o:Z

.field obl:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field oif:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field oxb:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Z

.field q:Z

.field qbh:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field qeg:Z

.field final synthetic r:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field rtg:Z

.field sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

.field ssp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tsu:Z

.field ugm:I

.field vdb:I

.field vdw:Z

.field veq:Z

.field vju:Z

.field wtn:Z

.field you:Ljava/lang/String;

.field ywr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zgw:I

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bio:Z

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->igw:I

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->wtn:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ywr:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oif:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bvj:I

    const/16 v3, 0x13

    iput v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ugm:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zgw:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ire:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->hmo:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->fto:[Ljava/lang/String;

    iput v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->veq:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cgv:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vju:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdw:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qeg:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q:Z

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ire:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p0(Z)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->fto:[Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    :cond_1
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->u0(Z)V

    :cond_3
    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O2(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l0(Z)V

    :cond_4
    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P2(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q0(Z)V

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;ILcom/android/server/am/OnePlusBackgroundFrozen$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    return-void
.end method

.method private A(ZLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dump begin--------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # systemFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # isolated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # boundUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->igw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->igw:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " # boundUid isFreeze = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # freeze = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # imperceptible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cgv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # deepBlockPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # blockClientUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ugm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # blockBindedUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bvj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # birthTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ire:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # lastReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->hmo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # processState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # uidActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # foreground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # uidStateImportant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # foregroundSwitchProtect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # contentNotifyResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # audio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # gps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qeg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # download = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " traffic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # trafficHigh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # sensor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # touchWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # mediaProjection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # important = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # pids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # prs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # bumpService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # bumpServicePids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # performReceiveBroadcast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # performingBroadcastPids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # deviceIdleWhiteList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # freezeWhiteList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isContainInWhiteList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # isOptApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # uidsNeedNotify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # isolatedUids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # holdVirtualDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # virtualDevices = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ywr:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # holdImportantProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # providers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # thirdBindedClients = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oif:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # thirdBindedServers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # firstFrozen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vju:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " # uid = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dump end----------------------"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private A0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v2, -0x8001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensor event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private B()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->igw:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private B0(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method private C()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bio:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private C0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchWindow change tAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private D()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cgv:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private D0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trafficHigh event tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private E()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oif:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private E0(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v4, 0x10000

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v4, -0x10001

    and-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->tsu(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traffic event tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " download:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private F()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private F0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid active tActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private G(Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)Z

    move-result v2

    monitor-enter p0

    :try_start_1
    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v0, v4

    :cond_2
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v7, 0x2000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    move v0, v4

    :cond_3
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v7, 0x10000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    move v0, v4

    :cond_4
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v7, 0x20000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    move v0, v4

    :cond_5
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v4

    :cond_6
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v4, v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z

    move-result v0

    if-eq v4, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " change to:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {p2, p0, v4, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private G0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->H0(Ljava/lang/String;Z)V

    return-void
.end method

.method private H(ZILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    sub-int/2addr p3, v1

    if-lez p3, :cond_2

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->kth:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p:Z

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private H0(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private I()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    :goto_0
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    :goto_1
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

.method private I0()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->M()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private J(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private J0()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-direct {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->v(I)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private K()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private K0(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ywr:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ywr:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ywr:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, -0x801

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private L(I)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private M()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private N()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vju:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UidStateCache isUidChangeToImperceptible, uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setImperceptible true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    const-string v0, "check match mask"

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->t0(ZLjava/lang/String;)V

    move v1, v2

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private O(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private varargs P([J)Z
    .locals 8

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    move-wide v4, v2

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    aget-wide v6, p1, v0

    or-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    not-long v4, v4

    and-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-gtz p1, :cond_4

    iget-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_4

    iget-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Q(Ljava/util/HashSet;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    :goto_3
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    if-eqz v7, :cond_5

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v8, v7, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v8, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v8

    const-string v9, " |serverUid:"

    if-eqz v8, :cond_7

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v8, v10}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->s(I)V

    invoke-direct {v8}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->I()Z

    move-result v10

    const-string v11, " return true"

    const/4 v12, 0x1

    if-eqz v10, :cond_6

    invoke-direct {v8, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->Q(Ljava/util/HashSet;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return v12

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    iput v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ugm:I

    return v12

    :cond_7
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private R()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v2, :cond_0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUidRequestingPermission, uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |pid:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is requesting permission, return true"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private S(Ljava/util/HashSet;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v8, :cond_7

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v9, v8, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v9, v8}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v9

    const-string v10, " |serverUid:"

    if-eqz v9, :cond_9

    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v9, v11}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->s(I)V

    invoke-direct {v9}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->I()Z

    move-result v11

    const/4 v12, 0x1

    const-string v13, " return true"

    if-eqz v11, :cond_8

    invoke-direct {v9, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->S(Ljava/util/HashSet;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return v12

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    iput v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ugm:I

    return v12

    :cond_9
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private T()Z
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bvj:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v2

    if-nez v2, :cond_0

    iput v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bvj:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private U()I
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J(Lcom/android/server/am/OnePlusBackgroundFrozen;)I

    move-result v0

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v2, "makeDeepJudgment uid:"

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is binder test uid, do freeze"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return v4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x3

    :try_start_0
    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ugm:I

    iget v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I

    if-eq v5, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v6, "pre-permRequest"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->R()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    if-eqz v5, :cond_2

    return v1

    :cond_2
    :goto_0
    iget v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v6, "permRequest"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->R()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    if-eqz v5, :cond_3

    iput v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I

    return v1

    :cond_3
    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gwm:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    iget v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " catch Exception return DO_NOTHING , rest of the attempt times:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Exception:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OPBF"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    if-lez p0, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private V(Ljava/lang/String;)I
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->M()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->tsu:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    if-nez v4, :cond_2

    const/4 p1, 0x4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is system application process, do resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    monitor-exit p0

    return v6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is system application process, do nothing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    monitor-exit p0

    return v5

    :cond_2
    iget-wide v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    const/4 v7, 0x1

    if-nez v4, :cond_3

    cmp-long v4, v0, v9

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    iget-wide v11, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    cmp-long v4, v11, v9

    if-gtz v4, :cond_4

    cmp-long v4, v0, v9

    if-lez v4, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->wtn:Z

    if-nez v3, :cond_6

    if-ne v4, v7, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->wtn:Z

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    move v4, v6

    :cond_7
    :goto_2
    const-string v3, ""

    if-eq v4, v7, :cond_a

    if-eq v4, v6, :cond_9

    if-eq v4, v5, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "do nothing"

    goto :goto_3

    :cond_9
    const-string v3, "resume"

    goto :goto_3

    :cond_a
    const-string v3, "freeze"

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for totalStateMap1:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |needToMeetMap:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |freezeState:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |procState:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |reason:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " m1:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mT:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " procState:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    :cond_b
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private W(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->E()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "notifyBindClientsStateChange"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v2, p2, v3, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v2, p2, v3, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->G0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private X(Z)V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j0(Z)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIsolatedUids boundUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, "freeze"

    goto :goto_1

    :cond_1
    const-string v4, "thawed"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private Y(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v3, "notifyStateChange NOTIFY_ALL"

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v1, "notifyStateChange"

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private Z(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, -0x21

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f0()V

    return-void
.end method

.method private a0()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v3, -0x81

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "remove foreground switch protection"

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    const-string v1, "FOREGROUND_SWITCH_PROTECT"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->G(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Lcom/android/server/am/OnePlusBackgroundFrozen$kth;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r0(Lcom/android/server/am/OnePlusBackgroundFrozen$kth;)V

    return-void
.end method

.method private b0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic bio(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->B0(Z)V

    return-void
.end method

.method static synthetic bud(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->x(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->o0(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->u0(Z)V

    return-void
.end method

.method private c0(ILjava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->obl:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v4, -0x21

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v4, -0x41

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    if-eqz p1, :cond_4

    iget p2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;->ssp:I

    if-nez p2, :cond_4

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$kth;I)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$oif;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$kth;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$oif;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$oif;Lcom/android/server/am/OnePlusBackgroundFrozen$kth;)V

    :cond_4
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    :cond_5
    :goto_0
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic cgv(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->H(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic cjf(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h0(Z)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->t(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l0(Z)V

    return-void
.end method

.method private d0(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oif:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic dma(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j0(Z)V

    return-void
.end method

.method static synthetic e(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q0(Z)V

    return-void
.end method

.method private e0()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zgw:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic ear(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->s0(Z)V

    return-void
.end method

.method static synthetic f(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Ljava/util/HashSet;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->F()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private f0()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdb:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic fto(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->A0(Z)V

    return-void
.end method

.method static synthetic g(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d0(I)V

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRelateProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->veq:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->veq:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v3, v4, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D0()Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D0()Landroid/util/SparseArray;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/IDisplayManagerCallback;

    if-eqz v6, :cond_4

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v9, 0x2422

    invoke-static {v9, v7, v8}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U0(III)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E0()I

    move-result v7

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F0()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    invoke-static {v9}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V0(I)V

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v4, :cond_1

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v8, "resumeRelateProcess adjustApp"

    iget v9, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v7, p1, v8, v9}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v1, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e0()V

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->veq:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeRelateProcess uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPBF"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->veq:Z

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zgw:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zgw:I

    if-lez v2, :cond_6

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " retry times:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zgw:I

    rsub-int/lit8 p0, p0, 0x4

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic gck(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r(I)V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->H0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic h(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->B()I

    move-result p0

    return p0
.end method

.method private h0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdw:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x2001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "audio event tHold: true"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->t0(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v3, "audio event tHold: true"

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic hmo(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D0(Z)V

    return-void
.end method

.method static synthetic i(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b0(I)V

    return-void
.end method

.method private i0(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->igw:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic ibl(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C0(Z)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->v0(Z)V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->E0(Z)V

    return-void
.end method

.method static synthetic irq(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->U()I

    move-result p0

    return p0
.end method

.method static synthetic ivd(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->p0(Z)V

    return-void
.end method

.method static synthetic j(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;[J)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->P([J)Z

    move-result p0

    return p0
.end method

.method private j0(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->wtn:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic k(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result p0

    return p0
.end method

.method private k0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x201

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid content notify resume tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->z(Z)V

    return-void
.end method

.method private l0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceIdle whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic les(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->V(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lqr(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->x0(Z)V

    return-void
.end method

.method static synthetic m(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n0(JJJ)V

    return-void
.end method

.method private m0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vju:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vju:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic n(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->C()Z

    move-result p0

    return p0
.end method

.method private n0(JJJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-wide p3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->les:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->irq:J

    const-wide/16 v0, 0x1

    and-long v2, p5, v0

    cmp-long v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->q:Z

    :goto_0
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v7, 0x2000

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdw:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->vdw:Z

    :goto_1
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v7, 0x4000

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qeg:Z

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qeg:Z

    :goto_2
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v7, 0x10000

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    goto :goto_3

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    :goto_3
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v7, 0x20000

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a:Z

    goto :goto_4

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a:Z

    :goto_4
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v7, 0x8000

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c:Z

    goto :goto_5

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c:Z

    :goto_5
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    and-long/2addr v5, v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_6

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    goto :goto_6

    :cond_6
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    :goto_6
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x2

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_7

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e:Z

    goto :goto_7

    :cond_7
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->e:Z

    :goto_7
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x4

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_8

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f:Z

    goto :goto_8

    :cond_8
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f:Z

    :goto_8
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_9

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g:Z

    goto :goto_9

    :cond_9
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g:Z

    :goto_9
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x10

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h:Z

    goto :goto_a

    :cond_a
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h:Z

    :goto_a
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_b

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    goto :goto_b

    :cond_b
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i:Z

    :goto_b
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_c

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    goto :goto_c

    :cond_c
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    :goto_c
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x80

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_d

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    goto :goto_d

    :cond_d
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    :goto_d
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x100

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_e

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    goto :goto_e

    :cond_e
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    :goto_e
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x200

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_f

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m:Z

    goto :goto_f

    :cond_f
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m:Z

    :goto_f
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v5, 0x400

    and-long/2addr v0, v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_10

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n:Z

    goto :goto_10

    :cond_10
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n:Z

    :goto_10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlag tFlag1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tFlag2:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tFlag3:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic o(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->K()Z

    move-result p0

    return p0
.end method

.method private o0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->d:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k:Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->igw(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->wtn(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->gck(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->dma(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "uid setForeground"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->t0(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const-string v3, "uid setForeground"

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->K0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground package change tFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic obl(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->g0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic oif(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->k0(Z)V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->Y(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic p(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->A(ZLjava/lang/String;)V

    return-void
.end method

.method private p0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bio:Z

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {p0, p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFreezeStateChange(IZ)V

    return-void
.end method

.method static synthetic q(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void
.end method

.method private q0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->h:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freezeWhiteList whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic qbh(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->u(ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic qeg(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->X(Z)V

    return-void
.end method

.method private r(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->gck:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private r0(Lcom/android/server/am/OnePlusBackgroundFrozen$kth;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->v(I)V

    return-void
.end method

.method private s(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->dma:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private s0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qeg:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x4001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->I0()Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->G(Ljava/lang/String;Z)V

    return-void
.end method

.method private t(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ssp:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private t0(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImperceptible uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cgv:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->w(I)V

    return-void
.end method

.method private u(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cno:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private u0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->f:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "important uid change tImportant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic ugm(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->c0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private v(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oif:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private v0(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->rtg:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic vdb(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->z0(I)V

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->m0()V

    return-void
.end method

.method static synthetic veq(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->K0(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vju(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->Z(IZLjava/lang/String;)V

    return-void
.end method

.method private w(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->qbh:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private w0(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->hmo:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Reason:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " freeze:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bio:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->fto:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    rem-int/lit8 p1, p1, 0x17

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->lqr:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic wtn(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->i0(I)V

    return-void
.end method

.method private x(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->oxb:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->j:Z

    iget-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v0, -0x41

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private x0(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->n:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/16 v2, -0x401

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid mediaProjection tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private y(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |sEnable:false , return"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->w0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->V(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->L(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->zta:I

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;->you(Lcom/android/server/am/OnePlusBackgroundFrozen$kth;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->r:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->igw(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->you:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->you:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->a0()V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private z(Z)V
    .locals 1

    const-string v0, "dumpCache"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->A(ZLjava/lang/String;)V

    return-void
.end method

.method private z0(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->l:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ibl:I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v3, 0x10000

    or-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    const-wide/32 v5, -0x10001

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->bud:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    :goto_1
    move v1, v2

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process state change tProcessState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " traffic:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->ivd:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " download:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->b:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->y(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zgw(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->F0(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bvj;->J(I)Z

    move-result p0

    return p0
.end method