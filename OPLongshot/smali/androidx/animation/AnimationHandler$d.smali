.class Landroidx/animation/AnimationHandler$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/animation/AnimationHandler$c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:Landroidx/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroidx/animation/AnimationHandler;)V
    .locals 2

    iput-object p1, p0, Landroidx/animation/AnimationHandler$d;->c:Landroidx/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/animation/AnimationHandler$d;->a:J

    const-wide/16 v0, 0x10

    iput-wide v0, p0, Landroidx/animation/AnimationHandler$d;->b:J

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 3

    invoke-static {}, Landroidx/animation/AnimationHandler;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/animation/AnimationHandler;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroidx/animation/AnimationHandler;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public onNewCallbackAdded(Landroidx/animation/AnimationHandler$b;)V
    .locals 0

    return-void
.end method

.method public postFrameCallback()V
    .locals 6

    iget-wide v0, p0, Landroidx/animation/AnimationHandler$d;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/animation/AnimationHandler$d;->a:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/animation/AnimationHandler$d;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/animation/AnimationHandler$d;->a:J

    iget-object v2, p0, Landroidx/animation/AnimationHandler$d;->c:Landroidx/animation/AnimationHandler;

    invoke-virtual {v2, v0, v1}, Landroidx/animation/AnimationHandler;->k(J)V

    return-void
.end method
