.class Lcom/google/analytics/tracking/android/GAServiceProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/analytics/tracking/android/z;
.implements Lcom/google/analytics/tracking/android/b$b;
.implements Lcom/google/analytics/tracking/android/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAServiceProxy$f;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$d;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$g;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$e;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field private volatile c:Lcom/google/analytics/tracking/android/a;

.field private d:Lcom/google/analytics/tracking/android/c;

.field private e:Lcom/google/analytics/tracking/android/c;

.field private final f:Lcom/google/analytics/tracking/android/p;

.field private final g:Lcom/google/analytics/tracking/android/e;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/analytics/tracking/android/GAServiceProxy$f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private volatile m:Ljava/util/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/analytics/tracking/android/h;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;)V
    .locals 2

    invoke-static {p1}, Lcom/google/analytics/tracking/android/p;->d(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;Lcom/google/analytics/tracking/android/c;Lcom/google/analytics/tracking/android/p;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;Lcom/google/analytics/tracking/android/c;Lcom/google/analytics/tracking/android/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->s:J

    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->e:Lcom/google/analytics/tracking/android/c;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->g:Lcom/google/analytics/tracking/android/e;

    iput-object p4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->f:Lcom/google/analytics/tracking/android/p;

    new-instance p1, Lcom/google/analytics/tracking/android/GAServiceProxy$a;

    invoke-direct {p1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$a;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->r:Lcom/google/analytics/tracking/android/h;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    sget-object p1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-void
.end method

.method static synthetic h(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->y()V

    return-void
.end method

.method static synthetic i(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/h;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->r:Lcom/google/analytics/tracking/android/h;

    return-object p0
.end method

.method static synthetic j(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->v()V

    return-void
.end method

.method static synthetic k(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic l(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object p0
.end method

.method static synthetic m(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->z()V

    return-void
.end method

.method static synthetic n(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->u()V

    return-void
.end method

.method static synthetic o(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic p(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->a:J

    return-wide v0
.end method

.method static synthetic q(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->s:J

    return-wide v0
.end method

.method private r(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    return-void
.end method

.method private declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$e;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->d()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->f(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->z()V

    goto :goto_1

    :cond_0
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->d:Lcom/google/analytics/tracking/android/c;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/c;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->n:Z

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$g;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$a;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private declared-synchronized y()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->g:Lcom/google/analytics/tracking/android/e;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/e;->c()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->g:Lcom/google/analytics/tracking/android/e;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/e;->d()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$b;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$b;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->t()V

    :cond_1
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$c;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v0, "Need to reconnect"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->u()V

    goto/16 :goto_3

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAServiceProxy$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to service   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->f:Lcom/google/analytics/tracking/android/p;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/p;->h()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/a;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const-string v0, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->r:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->a:J

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAServiceProxy$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to store  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->d:Lcom/google/analytics/tracking/android/c;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/c;->c(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->n:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->s()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->e:Lcom/google/analytics/tracking/android/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->e:Lcom/google/analytics/tracking/android/c;

    :goto_0
    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->d:Lcom/google/analytics/tracking/android/c;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/n;->i()Lcom/google/analytics/tracking/android/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->g:Lcom/google/analytics/tracking/android/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/n;->k(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;)V

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/n;->j()Lcom/google/analytics/tracking/android/c;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$c;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->n:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->w()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->q:Z

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$c;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->p:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->v()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->s()V

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->x()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    new-instance v7, Lcom/google/analytics/tracking/android/GAServiceProxy$f;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$f;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->y()V

    return-void
.end method

.method public declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    const-string v1, "Connected to service"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->p:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->v()V

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->y()V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->r(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->m:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$d;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$a;)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->s:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/b;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/b;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/b$b;Lcom/google/analytics/tracking/android/b$c;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->u()V

    return-void
.end method

.method public declared-synchronized g(ILandroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iget p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->j:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service unavailable (code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), will retry."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->x()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service unavailable (code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), using local store."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t()V
    .locals 4

    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$c;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->b:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->o:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->d:Lcom/google/analytics/tracking/android/c;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/analytics/tracking/android/c;->b(J)V

    :goto_0
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->o:Z

    :goto_1
    return-void
.end method
