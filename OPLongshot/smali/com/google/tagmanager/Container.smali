.class public Lcom/google/tagmanager/Container;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Container$e;,
        Lcom/google/tagmanager/Container$d;,
        Lcom/google/tagmanager/Container$c;,
        Lcom/google/tagmanager/Container$b;,
        Lcom/google/tagmanager/Container$RefreshFailure;,
        Lcom/google/tagmanager/Container$RefreshType;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/tagmanager/TagManager;

.field private d:Lcom/google/analytics/containertag/proto/i;

.field private e:Lcom/google/tagmanager/Container$e;

.field private f:Lcom/google/tagmanager/Container$b;

.field private g:Lcom/google/tagmanager/Runtime;

.field private volatile h:J

.field private volatile i:Ljava/lang/String;

.field private volatile j:I


# direct methods
.method static synthetic a(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->l(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;
    .locals 0

    iget-object p0, p0, Lcom/google/tagmanager/Container;->d:Lcom/google/analytics/containertag/proto/i;

    return-object p0
.end method

.method static synthetic c(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/i;)Lcom/google/analytics/containertag/proto/i;
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/Container;->d:Lcom/google/analytics/containertag/proto/i;

    return-object p1
.end method

.method static synthetic d(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->r(Lcom/google/analytics/containertag/proto/f;)V

    return-void
.end method

.method static synthetic e(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->y([Lcom/google/analytics/containertag/proto/h;)V

    return-void
.end method

.method static synthetic f(Lcom/google/tagmanager/Container;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/tagmanager/Container;->h:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/tagmanager/Container;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/tagmanager/Container;->h:J

    return-wide p1
.end method

.method static synthetic h(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->n(Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method static synthetic i(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/Container;->m(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    return-void
.end method

.method static synthetic j(Lcom/google/tagmanager/Container;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/Container;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->w(Lcom/google/analytics/containertag/proto/i;)V

    return-void
.end method

.method private declared-synchronized l(Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$b;->b(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized m(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/tagmanager/Container$b;->c(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized n(Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling containerRefreshSuccess("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): mUserCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i0;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/Container;->f:Lcom/google/tagmanager/Container$b;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Container$b;->a(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized q()Lcom/google/tagmanager/Runtime;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->g:Lcom/google/tagmanager/Runtime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r(Lcom/google/analytics/containertag/proto/f;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/tagmanager/s0;->d(Lcom/google/analytics/containertag/proto/f;)Lcom/google/tagmanager/s0$d;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/tagmanager/s0$h; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container;->s(Lcom/google/tagmanager/s0$d;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because it is invalid: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/i0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private s(Lcom/google/tagmanager/s0$d;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/tagmanager/s0$d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/Container;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/s0$d;->b()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/Container;->j:I

    iget-object v0, p0, Lcom/google/tagmanager/Container;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/Container;->o(Ljava/lang/String;)Lcom/google/tagmanager/w;

    move-result-object v7

    new-instance v0, Lcom/google/tagmanager/Runtime;

    iget-object v2, p0, Lcom/google/tagmanager/Container;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/tagmanager/Container;->c:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v1}, Lcom/google/tagmanager/TagManager;->a()Lcom/google/tagmanager/n;

    move-result-object v4

    new-instance v5, Lcom/google/tagmanager/Container$c;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/google/tagmanager/Container$c;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/j;)V

    new-instance v6, Lcom/google/tagmanager/Container$d;

    invoke-direct {v6, p0, v1}, Lcom/google/tagmanager/Container$d;-><init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/j;)V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/s0$d;Lcom/google/tagmanager/n;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/w;)V

    invoke-direct {p0, v0}, Lcom/google/tagmanager/Container;->x(Lcom/google/tagmanager/Runtime;)V

    return-void
.end method

.method private t()Z
    .locals 3

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->c()Lcom/google/tagmanager/PreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->d()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->d()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/Container;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/tagmanager/PreviewManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized w(Lcom/google/analytics/containertag/proto/i;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Container;->e:Lcom/google/tagmanager/Container$e;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/c1/a;

    invoke-direct {v0}, Lcom/google/tagmanager/c1/a;-><init>()V

    invoke-virtual {p0}, Lcom/google/tagmanager/Container;->p()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/tagmanager/c1/a;->c:J

    new-instance v1, Lcom/google/analytics/containertag/proto/f;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/f;-><init>()V

    iput-object v1, v0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    iput-object p1, v0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    iget-object p1, p0, Lcom/google/tagmanager/Container;->e:Lcom/google/tagmanager/Container$e;

    invoke-interface {p1, v0}, Lcom/google/tagmanager/Container$e;->a(Lcom/google/tagmanager/c1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized x(Lcom/google/tagmanager/Runtime;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Container;->g:Lcom/google/tagmanager/Runtime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private y([Lcom/google/analytics/containertag/proto/h;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/tagmanager/Container;->q()Lcom/google/tagmanager/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/Runtime;->g(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method abstract o(Ljava/lang/String;)Lcom/google/tagmanager/w;
.end method

.method public abstract p()J
.end method

.method public abstract u()Z
.end method

.method declared-synchronized v(J)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
