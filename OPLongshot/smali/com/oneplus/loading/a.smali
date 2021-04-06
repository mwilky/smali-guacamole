.class public abstract Lcom/oneplus/loading/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/loading/a$d;
    }
.end annotation


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:J

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/loading/a;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/oneplus/loading/a;->b:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/oneplus/loading/a;->c:J

    return-void
.end method

.method static synthetic a(Lcom/oneplus/loading/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/loading/a;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/oneplus/loading/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/loading/a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/loading/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/loading/a;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/oneplus/loading/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/loading/a;->e:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oneplus/loading/a;Lcom/oneplus/loading/a$d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/loading/a;->g(Lcom/oneplus/loading/a$d;Z)V

    return-void
.end method

.method private g(Lcom/oneplus/loading/a$d;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/loading/a;->d:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/oneplus/loading/a;->i(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/oneplus/loading/a$d;->a(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/loading/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/loading/a$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/loading/a$c;-><init>(Lcom/oneplus/loading/a;ZLcom/oneplus/loading/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    new-instance v0, Lcom/oneplus/loading/a$a;

    invoke-direct {v0, p0}, Lcom/oneplus/loading/a$a;-><init>(Lcom/oneplus/loading/a;)V

    iput-object v0, p0, Lcom/oneplus/loading/a;->a:Ljava/lang/Runnable;

    sget-object v1, Lcom/oneplus/loading/a;->f:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/oneplus/loading/a;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public h(Lcom/oneplus/loading/a$d;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/loading/a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/loading/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/loading/a;->g(Lcom/oneplus/loading/a$d;Z)V

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/loading/a;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oneplus/loading/a;->c:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/oneplus/loading/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/loading/a$b;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/loading/a$b;-><init>(Lcom/oneplus/loading/a;Lcom/oneplus/loading/a$d;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected abstract i(Ljava/lang/Object;)V
.end method

.method public j(J)Lcom/oneplus/loading/a;
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/loading/a;->c:J

    return-object p0
.end method

.method public k(J)Lcom/oneplus/loading/a;
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/loading/a;->b:J

    return-object p0
.end method

.method protected abstract l()Ljava/lang/Object;
.end method
