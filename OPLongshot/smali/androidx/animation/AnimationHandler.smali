.class Landroidx/animation/AnimationHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/AnimationHandler$c;,
        Landroidx/animation/AnimationHandler$d;,
        Landroidx/animation/AnimationHandler$FrameCallbackProvider16;,
        Landroidx/animation/AnimationHandler$a;,
        Landroidx/animation/AnimationHandler$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Landroidx/animation/AnimationHandler;

.field private static d:Landroidx/animation/AnimationHandler;

.field private static e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/animation/AnimationHandler$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/animation/AnimationHandler$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/animation/AnimationHandler;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    sput-object v0, Landroidx/animation/AnimationHandler;->c:Landroidx/animation/AnimationHandler;

    sput-object v0, Landroidx/animation/AnimationHandler;->d:Landroidx/animation/AnimationHandler;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/animation/AnimationHandler$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    new-instance p1, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p1, p0}, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/animation/AnimationHandler;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/animation/AnimationHandler$d;

    invoke-direct {p1, p0}, Landroidx/animation/AnimationHandler$d;-><init>(Landroidx/animation/AnimationHandler;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/animation/AnimationHandler;->a:Landroidx/animation/AnimationHandler$c;

    return-void
.end method

.method static synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroidx/animation/AnimationHandler;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/animation/AnimationHandler;->m(Z)V

    :cond_2
    return-void
.end method

.method private e(J)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/animation/AnimationHandler$b;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/animation/AnimationHandler;->i(Landroidx/animation/AnimationHandler$b;J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1, p2}, Landroidx/animation/AnimationHandler$b;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->d()V

    return-void
.end method

.method private f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimationHandler$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimationHandler$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/animation/AnimationHandler$a;

    invoke-direct {v0}, Landroidx/animation/AnimationHandler$a;-><init>()V

    sget-object v1, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Landroidx/animation/AnimationHandler$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()Landroidx/collection/SimpleArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/animation/AnimationHandler$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimationHandler$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/animation/AnimationHandler$a;

    invoke-direct {v0}, Landroidx/animation/AnimationHandler$a;-><init>()V

    sget-object v1, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Landroidx/animation/AnimationHandler$a;->a:Landroidx/collection/SimpleArrayMap;

    return-object v0
.end method

.method public static h()Landroidx/animation/AnimationHandler;
    .locals 2

    sget-object v0, Landroidx/animation/AnimationHandler;->d:Landroidx/animation/AnimationHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/animation/AnimationHandler;->c:Landroidx/animation/AnimationHandler;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/animation/AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/animation/AnimationHandler;-><init>(Landroidx/animation/AnimationHandler$c;)V

    sput-object v0, Landroidx/animation/AnimationHandler;->c:Landroidx/animation/AnimationHandler;

    :cond_1
    sget-object v0, Landroidx/animation/AnimationHandler;->c:Landroidx/animation/AnimationHandler;

    return-object v0
.end method

.method private i(Landroidx/animation/AnimationHandler$b;J)Z
    .locals 4

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->g()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->g()Landroidx/collection/SimpleArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private j()Z
    .locals 2

    sget-object v0, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimationHandler$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/animation/AnimationHandler$a;

    invoke-direct {v0}, Landroidx/animation/AnimationHandler$a;-><init>()V

    sget-object v1, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, v0, Landroidx/animation/AnimationHandler$a;->c:Z

    return v0
.end method

.method private m(Z)V
    .locals 2

    sget-object v0, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimationHandler$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/animation/AnimationHandler$a;

    invoke-direct {v0}, Landroidx/animation/AnimationHandler$a;-><init>()V

    sget-object v1, Landroidx/animation/AnimationHandler;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iput-boolean p1, v0, Landroidx/animation/AnimationHandler$a;->c:Z

    return-void
.end method


# virtual methods
.method b(Landroidx/animation/AnimationHandler$b;)V
    .locals 1

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/animation/AnimationHandler;->a:Landroidx/animation/AnimationHandler$c;

    invoke-interface {v0}, Landroidx/animation/AnimationHandler$c;->postFrameCallback()V

    :cond_0
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/animation/AnimationHandler;->a:Landroidx/animation/AnimationHandler$c;

    invoke-interface {v0, p1}, Landroidx/animation/AnimationHandler$c;->onNewCallbackAdded(Landroidx/animation/AnimationHandler$b;)V

    return-void
.end method

.method c(Landroidx/animation/f;)V
    .locals 2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/AnimationHandler$b;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/animation/f;->c0(Landroidx/animation/AnimationHandler$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/b;

    invoke-virtual {v1}, Landroidx/animation/b;->c()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method k(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/animation/AnimationHandler;->e(J)V

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/animation/AnimationHandler;->a:Landroidx/animation/AnimationHandler$c;

    invoke-interface {p1}, Landroidx/animation/AnimationHandler$c;->postFrameCallback()V

    :cond_0
    return-void
.end method

.method public l(Landroidx/animation/AnimationHandler$b;)V
    .locals 2

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->g()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/animation/AnimationHandler;->m(Z)V

    :cond_0
    return-void
.end method
