.class public Lcom/google/analytics/tracking/android/n;
.super Lcom/google/analytics/tracking/android/y;
.source ""


# static fields
.field private static final n:Ljava/lang/Object;

.field private static o:Lcom/google/analytics/tracking/android/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/analytics/tracking/android/c;

.field private volatile c:Lcom/google/analytics/tracking/android/e;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Lcom/google/analytics/tracking/android/d;

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/analytics/tracking/android/m;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/n;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->e:Z

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->h:Z

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->i:Z

    new-instance v0, Lcom/google/analytics/tracking/android/n$a;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/n$a;-><init>(Lcom/google/analytics/tracking/android/n;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/n;->j:Lcom/google/analytics/tracking/android/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    return-void
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/analytics/tracking/android/n;->h:Z

    return p0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/n;)I
    .locals 0

    iget p0, p0, Lcom/google/analytics/tracking/android/n;->d:I

    return p0
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    return p0
.end method

.method static synthetic g(Lcom/google/analytics/tracking/android/n;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    return-object p0
.end method

.method public static i()Lcom/google/analytics/tracking/android/n;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/n;->o:Lcom/google/analytics/tracking/android/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/n;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/n;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/n;->o:Lcom/google/analytics/tracking/android/n;

    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/n;->o:Lcom/google/analytics/tracking/android/n;

    return-object v0
.end method

.method private l()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/n$b;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/n$b;-><init>(Lcom/google/analytics/tracking/android/n;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    iget v1, p0, Lcom/google/analytics/tracking/android/n;->d:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/n;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    new-instance v0, Lcom/google/analytics/tracking/android/m;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/m;-><init>(Lcom/google/analytics/tracking/android/y;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/n;->l:Lcom/google/analytics/tracking/android/m;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/m;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/analytics/tracking/android/n;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    sget-object v1, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    sget-object v3, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
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

.method declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/n;->o(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized j()Lcom/google/analytics/tracking/android/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->b:Lcom/google/analytics/tracking/android/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/u;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->j:Lcom/google/analytics/tracking/android/d;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/n;->b:Lcom/google/analytics/tracking/android/c;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/c;->d()Lcom/google/analytics/tracking/android/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/k;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/n;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/n;->l()V

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->l:Lcom/google/analytics/tracking/android/m;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->i:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/n;->m()V

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->b:Lcom/google/analytics/tracking/android/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized k(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/n;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    if-nez p1, :cond_2

    iput-object p2, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    iget-boolean p1, p0, Lcom/google/analytics/tracking/android/n;->e:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/n;->h()V

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/n;->e:Z

    :cond_1
    iget-boolean p1, p0, Lcom/google/analytics/tracking/android/n;->f:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/n;->n()V

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/n;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    if-nez v0, :cond_0

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->f:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_FORCE_LOCAL_DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n;->c:Lcom/google/analytics/tracking/android/e;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/e;->b()V

    return-void
.end method

.method declared-synchronized o(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/n;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/analytics/tracking/android/n;->d:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    sget-object v2, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v1, p0, Lcom/google/analytics/tracking/android/n;->d:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/n;->k:Landroid/os/Handler;

    sget-object v3, Lcom/google/analytics/tracking/android/n;->n:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/google/analytics/tracking/android/n;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "terminated."

    goto :goto_1

    :cond_5
    :goto_0
    const-string v1, "initiated."

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/n;->m:Z

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/n;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
